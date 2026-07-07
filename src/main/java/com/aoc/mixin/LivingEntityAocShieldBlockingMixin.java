package com.aoc.mixin;

import com.aoc.ai.AocAiHolder;
import com.aoc.ai.AocShieldAiData;
import net.minecraft.core.component.DataComponents;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.tags.ItemTags;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.component.BlocksAttacks;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.Redirect;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

@Mixin(LivingEntity.class)
public abstract class LivingEntityAocShieldBlockingMixin {
	private static final String GUARD_VILLAGERS_NAMESPACE = "guardvillagers";

	@Shadow
	public abstract ItemStack getItemBlockingWith();

	@Shadow
	public abstract InteractionHand getUsedItemHand();

	@Redirect(method = "applyItemBlocking", at = @At(value = "INVOKE", target = "Lnet/minecraft/world/item/component/BlocksAttacks;resolveBlockedDamage(Lnet/minecraft/world/damagesource/DamageSource;FD)F"))
	private float aoc$resolveBlockedDamage(BlocksAttacks blocksAttacks, DamageSource source, float amount, double angle) {
		if (aoc$isGuardVillagersEntity()) {
			return blocksAttacks.resolveBlockedDamage(source, amount, angle);
		}

		AocShieldAiData shieldAi = aoc$shieldAi();
		if (!shieldAi.isConfigured() || !shieldAi.isEnabled()) {
			return blocksAttacks.resolveBlockedDamage(source, amount, angle);
		}

		double configuredAngle = Math.toRadians(shieldAi.blockingAngle());
		double effectiveAngle = angle <= configuredAngle ? 0.0D : Math.PI;
		return blocksAttacks.resolveBlockedDamage(source, amount, effectiveAngle);
	}

	@Inject(method = "applyItemBlocking", at = @At("RETURN"))
	private void aoc$afterItemBlocking(ServerLevel level, DamageSource source, float amount,
			CallbackInfoReturnable<Float> info) {
		if (aoc$isGuardVillagersEntity()) {
			return;
		}

		float blockedDamage = info.getReturnValue();
		AocShieldAiData shieldAi = aoc$shieldAi();
		if (blockedDamage <= 0.0F || !shieldAi.isConfigured() || !shieldAi.isEnabled()) {
			return;
		}

		ItemStack blockingItem = getItemBlockingWith();
		if (blockingItem == null || blockingItem.isEmpty()) {
			return;
		}

		BlocksAttacks blocksAttacks = blockingItem.get(DataComponents.BLOCKS_ATTACKS);
		if (blocksAttacks == null) {
			return;
		}

		LivingEntity self = aoc$self();
		if (!(self instanceof Player)) {
			hurtNonPlayerBlockingItem(blockingItem, blocksAttacks, blockedDamage);
			disableNonPlayerShieldIfNeeded(level, source, blockingItem, blocksAttacks, shieldAi);
		}
	}

	private void hurtNonPlayerBlockingItem(ItemStack blockingItem, BlocksAttacks blocksAttacks, float blockedDamage) {
		int itemDamage = blocksAttacks.itemDamage().apply(blockedDamage);
		if (itemDamage > 0) {
			blockingItem.hurtAndBreak(itemDamage, aoc$self(), getUsedItemHand().asEquipmentSlot());
		}
	}

	private void disableNonPlayerShieldIfNeeded(ServerLevel level, DamageSource source, ItemStack blockingItem,
			BlocksAttacks blocksAttacks, AocShieldAiData shieldAi) {
		float disableSeconds = getDisableSeconds(source);
		if (disableSeconds <= 0.0F) {
			return;
		}

		blocksAttacks.disable(level, aoc$self(), disableSeconds, blockingItem);
		shieldAi.setUseTicks(0);
		shieldAi.setDisabledCooldown(shieldAi.axeDisableCooldownTicks());
	}

	private float getDisableSeconds(DamageSource source) {
		if (source.getDirectEntity() instanceof LivingEntity attacker) {
			float disableSeconds = attacker.getSecondsToDisableBlocking();
			if (disableSeconds > 0.0F) {
				return disableSeconds;
			}
		}

		ItemStack weapon = source.getWeaponItem();
		if (weapon != null && !weapon.isEmpty() && weapon.typeHolder().is(ItemTags.AXES)) {
			return 1.6F;
		}

		return 0.0F;
	}

	@Unique
	private LivingEntity aoc$self() {
		return (LivingEntity) (Object) this;
	}

	@Unique
	private boolean aoc$isGuardVillagersEntity() {
		Identifier id = BuiltInRegistries.ENTITY_TYPE.getKey(aoc$self().getType());
		return GUARD_VILLAGERS_NAMESPACE.equals(id.getNamespace());
	}

	@Unique
	private AocShieldAiData aoc$shieldAi() {
		return ((AocAiHolder) this).aoc$getAiData().shield();
	}
}

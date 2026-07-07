package com.aoc.mixin;

import com.aoc.AgeOfCavalry;
import com.aoc.ai.AocAiHolder;
import com.aoc.ai.AocShieldAiData;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.ai.attributes.AttributeInstance;
import net.minecraft.world.entity.ai.attributes.AttributeModifier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.item.Items;
import net.minecraft.world.level.Level;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(Mob.class)
public abstract class MobAocShieldMixin extends LivingEntity {
	private static final String GUARD_VILLAGERS_NAMESPACE = "guardvillagers";
	private static final Identifier SHIELD_SPEED_REDUCTION_ID = Identifier.fromNamespaceAndPath(AgeOfCavalry.MOD_ID,
			"shield_speed_reduction");

	protected MobAocShieldMixin(EntityType<? extends LivingEntity> entityType, Level level) {
		super(entityType, level);
	}

	@Inject(method = "tick", at = @At("TAIL"))
	private void aoc$tickShieldAi(CallbackInfo info) {
		if (level().isClientSide()) {
			return;
		}

		Mob mob = (Mob) (Object) this;
		if (isGuardVillagersEntity(mob)) {
			removeAocShieldSpeedModifier();
			return;
		}

		AocShieldAiData shieldAi = ((AocAiHolder) this).aoc$getAiData().shield();
		shieldAi.tickCooldowns();
		if (!shieldAi.isConfigured()) {
			removeAocShieldSpeedModifier();
			return;
		}

		if (!shieldAi.canUse() || mob.isNoAi() || getOffhandItem().getItem() != Items.SHIELD) {
			stopAocShield(shieldAi);
			return;
		}

		LivingEntity target = mob.getTarget();
		if (target == null || !target.isAlive()) {
			stopAocShield(shieldAi);
			return;
		}

		if (shieldAi.useTicks() > 0) {
			continueAocShield(shieldAi);
			return;
		}

		if (isUsingItem() && getUsedItemHand() == InteractionHand.OFF_HAND) {
			stopUsingItem();
			shieldAi.setCooldown(shieldAi.cooldownTicks());
			removeAocShieldSpeedModifier();
			return;
		}

		if (!shouldAocRaiseShield(shieldAi, target) || shieldAi.cooldown() > 0) {
			return;
		}

		if (getRandom().nextFloat() <= shieldAi.chance()) {
			shieldAi.setUseTicks(randomAocShieldDuration(shieldAi));
			startUsingItem(InteractionHand.OFF_HAND);
			updateAocShieldSpeedModifier(shieldAi);
		} else {
			shieldAi.setCooldown(shieldAi.cooldownTicks());
			removeAocShieldSpeedModifier();
		}
	}

	private boolean isGuardVillagersEntity(Mob mob) {
		Identifier id = BuiltInRegistries.ENTITY_TYPE.getKey(mob.getType());
		return GUARD_VILLAGERS_NAMESPACE.equals(id.getNamespace());
	}

	private boolean shouldAocRaiseShield(AocShieldAiData shieldAi, LivingEntity target) {
		float range = shieldAi.range();
		return distanceToSqr(target) <= range * range && hasLineOfSight(target);
	}

	private void continueAocShield(AocShieldAiData shieldAi) {
		if (!isUsingItem()) {
			startUsingItem(InteractionHand.OFF_HAND);
		}

		if (!isUsingItem() || getUsedItemHand() != InteractionHand.OFF_HAND) {
			shieldAi.setUseTicks(0);
			return;
		}

		shieldAi.setUseTicks(shieldAi.useTicks() - 1);
		updateAocShieldSpeedModifier(shieldAi);
	}

	private int randomAocShieldDuration(AocShieldAiData shieldAi) {
		int min = shieldAi.minUseTicks();
		int max = shieldAi.maxUseTicks();
		if (max <= min) {
			return min;
		}

		return min + getRandom().nextInt(max - min + 1);
	}

	private void stopAocShield(AocShieldAiData shieldAi) {
		if (isUsingItem() && getUsedItemHand() == InteractionHand.OFF_HAND
				&& (shieldAi.useTicks() > 0 || getOffhandItem().getItem() == Items.SHIELD)) {
			stopUsingItem();
		}

		shieldAi.setUseTicks(0);
		removeAocShieldSpeedModifier();
	}

	private void updateAocShieldSpeedModifier(AocShieldAiData shieldAi) {
		AttributeInstance speed = getAttribute(Attributes.MOVEMENT_SPEED);
		if (speed == null) {
			return;
		}

		float reduction = shieldAi.speedReduction();
		if (reduction <= 0.0F || !isUsingItem() || getUsedItemHand() != InteractionHand.OFF_HAND) {
			speed.removeModifier(SHIELD_SPEED_REDUCTION_ID);
			return;
		}

		speed.addOrUpdateTransientModifier(new AttributeModifier(SHIELD_SPEED_REDUCTION_ID, -reduction,
				AttributeModifier.Operation.ADD_MULTIPLIED_TOTAL));
	}

	private void removeAocShieldSpeedModifier() {
		AttributeInstance speed = getAttribute(Attributes.MOVEMENT_SPEED);
		if (speed != null) {
			speed.removeModifier(SHIELD_SPEED_REDUCTION_ID);
		}
	}
}

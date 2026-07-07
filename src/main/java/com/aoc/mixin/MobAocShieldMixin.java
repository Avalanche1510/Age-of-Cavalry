package com.aoc.mixin;

import com.aoc.ai.AocAiHolder;
import com.aoc.ai.AocShieldAiData;
import net.minecraft.world.InteractionHand;
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
	protected MobAocShieldMixin(EntityType<? extends LivingEntity> entityType, Level level) {
		super(entityType, level);
	}

	@Inject(method = "tick", at = @At("TAIL"))
	private void aoc$tickShieldAi(CallbackInfo info) {
		if (level().isClientSide()) {
			return;
		}

		Mob mob = (Mob) (Object) this;
		AocShieldAiData shieldAi = ((AocAiHolder) this).aoc$getAiData().shield();
		shieldAi.tickCooldowns();

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
			return;
		}

		if (!shouldAocRaiseShield(shieldAi, target) || shieldAi.cooldown() > 0) {
			return;
		}

		if (getRandom().nextFloat() <= shieldAi.chance()) {
			shieldAi.setUseTicks(randomAocShieldDuration(shieldAi));
			startUsingItem(InteractionHand.OFF_HAND);
		} else {
			shieldAi.setCooldown(shieldAi.cooldownTicks());
		}
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
	}
}

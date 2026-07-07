package com.aoc.mixin;

import com.aoc.ai.AocAiData;
import com.aoc.ai.AocAiHolder;
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
		AocAiData aiData = ((AocAiHolder) this).aoc$getAiData();
		aiData.tickShieldCooldown();

		if (!aiData.canUseShield() || mob.isNoAi() || getOffhandItem().getItem() != Items.SHIELD) {
			stopAocShield(aiData);
			return;
		}

		LivingEntity target = mob.getTarget();
		if (target == null || !target.isAlive()) {
			stopAocShield(aiData);
			return;
		}

		if (aiData.shieldUseTicks() > 0) {
			continueAocShield(aiData);
			return;
		}

		if (isUsingItem() && getUsedItemHand() == InteractionHand.OFF_HAND) {
			stopUsingItem();
			aiData.setShieldCooldown(aiData.shieldCooldownTicks());
			return;
		}

		if (!shouldAocRaiseShield(aiData, target) || aiData.shieldCooldown() > 0) {
			return;
		}

		if (getRandom().nextFloat() <= aiData.shieldChance()) {
			aiData.setShieldUseTicks(randomAocShieldDuration(aiData));
			startUsingItem(InteractionHand.OFF_HAND);
		} else {
			aiData.setShieldCooldown(aiData.shieldCooldownTicks());
		}
	}

	private boolean shouldAocRaiseShield(AocAiData aiData, LivingEntity target) {
		float range = aiData.shieldRange();
		return distanceToSqr(target) <= range * range && hasLineOfSight(target);
	}

	private void continueAocShield(AocAiData aiData) {
		if (!isUsingItem()) {
			startUsingItem(InteractionHand.OFF_HAND);
		}

		if (!isUsingItem() || getUsedItemHand() != InteractionHand.OFF_HAND) {
			aiData.setShieldUseTicks(0);
			return;
		}

		aiData.setShieldUseTicks(aiData.shieldUseTicks() - 1);
	}

	private int randomAocShieldDuration(AocAiData aiData) {
		int min = aiData.shieldMinUseTicks();
		int max = aiData.shieldMaxUseTicks();
		if (max <= min) {
			return min;
		}

		return min + getRandom().nextInt(max - min + 1);
	}

	private void stopAocShield(AocAiData aiData) {
		if (isUsingItem() && getUsedItemHand() == InteractionHand.OFF_HAND
				&& (aiData.shieldUseTicks() > 0 || getOffhandItem().getItem() == Items.SHIELD)) {
			stopUsingItem();
		}

		aiData.setShieldUseTicks(0);
	}
}

package com.aoc.mixin.client;

import net.minecraft.client.model.AnimationUtils;
import net.minecraft.client.model.HumanoidModel;
import net.minecraft.client.model.geom.ModelPart;
import net.minecraft.client.model.monster.zombie.AbstractZombieModel;
import net.minecraft.client.renderer.entity.state.UndeadRenderState;
import net.minecraft.client.renderer.entity.state.ZombieRenderState;
import net.minecraft.core.component.DataComponents;
import net.minecraft.util.Mth;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.HumanoidArm;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.Redirect;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(AbstractZombieModel.class)
public class AbstractZombieModelAocShieldPoseMixin {
	@Unique
	private static final float AOC_SHIELD_X_ROT = -0.9424779F;
	@Unique
	private static final float AOC_SHIELD_Y_ROT = 0.5235988F;
	@Unique
	private static final float AOC_SHIELD_MIN_HEAD_X_ROT = -1.3962634F;
	@Unique
	private static final float AOC_SHIELD_MAX_HEAD_X_ROT = 0.43633232F;

	@Redirect(method = "setupAnim(Lnet/minecraft/client/renderer/entity/state/ZombieRenderState;)V", at = @At(value = "INVOKE", target = "Lnet/minecraft/client/model/AnimationUtils;animateZombieArms(Lnet/minecraft/client/model/geom/ModelPart;Lnet/minecraft/client/model/geom/ModelPart;ZLnet/minecraft/client/renderer/entity/state/UndeadRenderState;)V"))
	private void aoc$keepBlockingArmPose(ModelPart leftArm, ModelPart rightArm, boolean isAggressive,
			UndeadRenderState state) {
		if (aoc$isUsingBlockingItem(state)) {
			return;
		}

		AnimationUtils.animateZombieArms(leftArm, rightArm, isAggressive, state);
	}

	@Inject(method = "setupAnim(Lnet/minecraft/client/renderer/entity/state/ZombieRenderState;)V", at = @At("TAIL"))
	private void aoc$poseBlockingArmAfterZombieAnimations(ZombieRenderState state, CallbackInfo info) {
		if (!aoc$isUsingBlockingItem(state)) {
			return;
		}

		HumanoidModel<?> model = (HumanoidModel<?>) (Object) this;
		HumanoidArm usedArm = aoc$usedItemArm(state);
		ModelPart arm = usedArm == HumanoidArm.RIGHT ? model.rightArm : model.leftArm;
		aoc$poseBlockingArm(model, arm, usedArm == HumanoidArm.RIGHT);
	}

	private static boolean aoc$isUsingBlockingItem(UndeadRenderState state) {
		if (!state.isUsingItem) {
			return false;
		}

		ItemStack stack = state.getUseItemStackForArm(aoc$usedItemArm(state));
		return !stack.isEmpty() && stack.get(DataComponents.BLOCKS_ATTACKS) != null;
	}

	private static HumanoidArm aoc$usedItemArm(UndeadRenderState state) {
		if (state.useItemHand == InteractionHand.MAIN_HAND) {
			return state.mainArm;
		}

		return state.mainArm.getOpposite();
	}

	@Unique
	private static void aoc$poseBlockingArm(HumanoidModel<?> model, ModelPart arm, boolean rightArm) {
		arm.xRot = AOC_SHIELD_X_ROT + Mth.clamp(model.head.xRot, AOC_SHIELD_MIN_HEAD_X_ROT,
				AOC_SHIELD_MAX_HEAD_X_ROT);
		arm.yRot = (rightArm ? -AOC_SHIELD_Y_ROT : AOC_SHIELD_Y_ROT)
				+ Mth.clamp(model.head.yRot, -AOC_SHIELD_Y_ROT, AOC_SHIELD_Y_ROT);
		arm.zRot = 0.0F;
	}
}

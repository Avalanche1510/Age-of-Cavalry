package com.aoc.mixin.client;

import net.minecraft.client.model.HumanoidModel;
import net.minecraft.client.model.geom.ModelPart;
import net.minecraft.client.model.monster.skeleton.SkeletonModel;
import net.minecraft.client.renderer.entity.state.SkeletonRenderState;
import net.minecraft.core.component.DataComponents;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.HumanoidArm;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(SkeletonModel.class)
public class SkeletonModelAocShieldPoseMixin {
	@Unique
	private boolean aoc$hasBlockingArmPose;
	@Unique
	private boolean aoc$blockingArmRight;
	@Unique
	private float aoc$blockingArmXRot;
	@Unique
	private float aoc$blockingArmYRot;
	@Unique
	private float aoc$blockingArmZRot;
	@Unique
	private float aoc$blockingArmX;
	@Unique
	private float aoc$blockingArmY;
	@Unique
	private float aoc$blockingArmZ;

	@Inject(method = "setupAnim(Lnet/minecraft/client/renderer/entity/state/SkeletonRenderState;)V", at = @At(value = "INVOKE", target = "Lnet/minecraft/client/model/HumanoidModel;setupAnim(Lnet/minecraft/client/renderer/entity/state/HumanoidRenderState;)V", shift = At.Shift.AFTER))
	private void aoc$captureBlockingArmPose(SkeletonRenderState state, CallbackInfo info) {
		aoc$hasBlockingArmPose = false;
		if (!aoc$isUsingBlockingItem(state)) {
			return;
		}

		HumanoidArm usedArm = aoc$usedItemArm(state);
		HumanoidModel<?> model = (HumanoidModel<?>) (Object) this;
		ModelPart arm = usedArm == HumanoidArm.RIGHT ? model.rightArm : model.leftArm;
		aoc$blockingArmRight = usedArm == HumanoidArm.RIGHT;
		aoc$blockingArmXRot = arm.xRot;
		aoc$blockingArmYRot = arm.yRot;
		aoc$blockingArmZRot = arm.zRot;
		aoc$blockingArmX = arm.x;
		aoc$blockingArmY = arm.y;
		aoc$blockingArmZ = arm.z;
		aoc$hasBlockingArmPose = true;
	}

	@Inject(method = "setupAnim(Lnet/minecraft/client/renderer/entity/state/SkeletonRenderState;)V", at = @At("TAIL"))
	private void aoc$restoreBlockingArmPose(SkeletonRenderState state, CallbackInfo info) {
		if (!aoc$hasBlockingArmPose) {
			return;
		}

		HumanoidModel<?> model = (HumanoidModel<?>) (Object) this;
		ModelPart arm = aoc$blockingArmRight ? model.rightArm : model.leftArm;
		arm.xRot = aoc$blockingArmXRot;
		arm.yRot = aoc$blockingArmYRot;
		arm.zRot = aoc$blockingArmZRot;
		arm.x = aoc$blockingArmX;
		arm.y = aoc$blockingArmY;
		arm.z = aoc$blockingArmZ;
		aoc$hasBlockingArmPose = false;
	}

	@Unique
	private static boolean aoc$isUsingBlockingItem(SkeletonRenderState state) {
		if (!state.isUsingItem) {
			return false;
		}

		ItemStack stack = aoc$getItemStackForArm(state, aoc$usedItemArm(state));
		return !stack.isEmpty() && stack.get(DataComponents.BLOCKS_ATTACKS) != null;
	}

	@Unique
	private static HumanoidArm aoc$usedItemArm(SkeletonRenderState state) {
		if (state.useItemHand == InteractionHand.MAIN_HAND) {
			return state.mainArm;
		}

		return state.mainArm.getOpposite();
	}

	@Unique
	private static ItemStack aoc$getItemStackForArm(SkeletonRenderState state, HumanoidArm arm) {
		return arm == HumanoidArm.RIGHT ? state.rightHandItemStack : state.leftHandItemStack;
	}
}

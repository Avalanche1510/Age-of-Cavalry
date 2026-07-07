package com.aoc.mixin.client;

import net.minecraft.client.model.geom.ModelPart;
import net.minecraft.client.model.monster.illager.IllagerModel;
import net.minecraft.client.renderer.entity.state.IllagerRenderState;
import net.minecraft.core.component.DataComponents;
import net.minecraft.util.Mth;
import net.minecraft.world.entity.HumanoidArm;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Final;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(IllagerModel.class)
public class IllagerModelAocShieldPoseMixin {
	@Unique
	private static final float AOC_SHIELD_X_ROT = -0.9424779F;
	@Unique
	private static final float AOC_SHIELD_Y_ROT = 0.5235988F;
	@Unique
	private static final float AOC_SHIELD_MIN_HEAD_X_ROT = -1.3962634F;
	@Unique
	private static final float AOC_SHIELD_MAX_HEAD_X_ROT = 0.43633232F;
	@Unique
	private static final float AOC_RIGHT_ARM_X = -5.0F;
	@Unique
	private static final float AOC_LEFT_ARM_X = 5.0F;
	@Unique
	private static final float AOC_ARM_Y = 2.0F;
	@Unique
	private static final float AOC_ARM_Z = 0.0F;

	@Shadow
	@Final
	private ModelPart head;
	@Shadow
	@Final
	private ModelPart arms;
	@Shadow
	@Final
	private ModelPart rightArm;
	@Shadow
	@Final
	private ModelPart leftArm;

	@Inject(method = "setupAnim(Lnet/minecraft/client/renderer/entity/state/IllagerRenderState;)V", at = @At("TAIL"))
	private void aoc$poseBlockingArm(IllagerRenderState state, CallbackInfo info) {
		HumanoidArm usedArm = aoc$blockingArm(state);
		if (usedArm == null) {
			return;
		}

		arms.visible = false;
		rightArm.visible = true;
		leftArm.visible = true;
		aoc$poseArm(usedArm == HumanoidArm.RIGHT ? rightArm : leftArm, usedArm == HumanoidArm.RIGHT);
	}

	@Unique
	private HumanoidArm aoc$blockingArm(IllagerRenderState state) {
		if (state.ticksUsingItem <= 0.0F) {
			return null;
		}

		if (aoc$isBlockingItem(state.leftHandItemStack)) {
			return HumanoidArm.LEFT;
		}

		if (aoc$isBlockingItem(state.rightHandItemStack)) {
			return HumanoidArm.RIGHT;
		}

		return null;
	}

	@Unique
	private static boolean aoc$isBlockingItem(ItemStack stack) {
		return !stack.isEmpty() && stack.get(DataComponents.BLOCKS_ATTACKS) != null;
	}

	@Unique
	private void aoc$poseArm(ModelPart arm, boolean rightArm) {
		arm.x = rightArm ? AOC_RIGHT_ARM_X : AOC_LEFT_ARM_X;
		arm.y = AOC_ARM_Y;
		arm.z = AOC_ARM_Z;
		arm.xRot = AOC_SHIELD_X_ROT + Mth.clamp(head.xRot, AOC_SHIELD_MIN_HEAD_X_ROT,
				AOC_SHIELD_MAX_HEAD_X_ROT);
		arm.yRot = (rightArm ? -AOC_SHIELD_Y_ROT : AOC_SHIELD_Y_ROT)
				+ Mth.clamp(head.yRot, -AOC_SHIELD_Y_ROT, AOC_SHIELD_Y_ROT);
		arm.zRot = 0.0F;
	}
}

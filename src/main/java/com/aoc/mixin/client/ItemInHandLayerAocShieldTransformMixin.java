package com.aoc.mixin.client;

import com.mojang.blaze3d.vertex.PoseStack;
import com.mojang.math.Axis;
import net.minecraft.client.renderer.SubmitNodeCollector;
import net.minecraft.client.renderer.entity.layers.ItemInHandLayer;
import net.minecraft.client.renderer.entity.layers.PlayerItemInHandLayer;
import net.minecraft.client.renderer.entity.state.ArmedEntityRenderState;
import net.minecraft.client.renderer.entity.state.HumanoidRenderState;
import net.minecraft.client.renderer.item.ItemStackRenderState;
import net.minecraft.core.component.DataComponents;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.HumanoidArm;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(ItemInHandLayer.class)
public class ItemInHandLayerAocShieldTransformMixin {
	@Inject(method = "submitArmWithItem", at = @At(value = "INVOKE", target = "Lnet/minecraft/client/renderer/item/ItemStackRenderState;submit(Lcom/mojang/blaze3d/vertex/PoseStack;Lnet/minecraft/client/renderer/SubmitNodeCollector;III)V"))
	private void aoc$rotateBlockingShield(ArmedEntityRenderState state, ItemStackRenderState itemState,
			ItemStack itemStack, HumanoidArm arm, PoseStack poseStack, SubmitNodeCollector collector, int light,
			CallbackInfo info) {
		if ((Object) this instanceof PlayerItemInHandLayer || !aoc$isUsingBlockingShield(state, itemStack, arm)) {
			return;
		}

		poseStack.mulPose(Axis.XP.rotationDegrees(65.0F));
	}

	@Unique
	private static boolean aoc$isUsingBlockingShield(ArmedEntityRenderState state, ItemStack itemStack,
			HumanoidArm arm) {
		if (!(state instanceof HumanoidRenderState humanoidState) || !humanoidState.isUsingItem
				|| arm != aoc$usedItemArm(humanoidState)) {
			return false;
		}

		return !itemStack.isEmpty() && itemStack.get(DataComponents.BLOCKS_ATTACKS) != null;
	}

	@Unique
	private static HumanoidArm aoc$usedItemArm(HumanoidRenderState state) {
		if (state.useItemHand == InteractionHand.MAIN_HAND) {
			return state.mainArm;
		}

		return state.mainArm.getOpposite();
	}
}

package com.aoc.mixin.client;

import net.minecraft.client.model.HumanoidModel;
import net.minecraft.client.renderer.entity.HumanoidMobRenderer;
import net.minecraft.core.component.DataComponents;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.HumanoidArm;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

@Mixin(HumanoidMobRenderer.class)
public class HumanoidMobRendererAocShieldPoseMixin {
	private static final String GUARD_VILLAGERS_NAMESPACE = "guardvillagers";

	@Inject(method = "getArmPose", at = @At("HEAD"), cancellable = true)
	private void aoc$getBlockingArmPose(Mob mob, HumanoidArm arm,
			CallbackInfoReturnable<HumanoidModel.ArmPose> info) {
		if (aoc$isGuardVillagersEntity(mob)) {
			return;
		}

		if (!mob.isUsingItem() || arm != aoc$usedItemArm(mob)) {
			return;
		}

		ItemStack stack = mob.getItemHeldByArm(arm);
		if (!stack.isEmpty() && stack.get(DataComponents.BLOCKS_ATTACKS) != null) {
			info.setReturnValue(HumanoidModel.ArmPose.BLOCK);
		}
	}

	private static HumanoidArm aoc$usedItemArm(Mob mob) {
		if (mob.getUsedItemHand() == InteractionHand.MAIN_HAND) {
			return mob.getMainArm();
		}

		return mob.getMainArm().getOpposite();
	}

	private static boolean aoc$isGuardVillagersEntity(Mob mob) {
		Identifier id = BuiltInRegistries.ENTITY_TYPE.getKey(mob.getType());
		return GUARD_VILLAGERS_NAMESPACE.equals(id.getNamespace());
	}
}

package com.aoc.mixin;

import com.aoc.ai.AocAiData;
import com.aoc.ai.AocAiHolder;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(LivingEntity.class)
public class LivingEntityAocAiMixin implements AocAiHolder {
	@Unique
	private final AocAiData aoc$aiData = new AocAiData();

	@Override
	public AocAiData aoc$getAiData() {
		return aoc$aiData;
	}

	@Inject(method = "addAdditionalSaveData", at = @At("TAIL"))
	private void aoc$writeAiData(ValueOutput output, CallbackInfo info) {
		aoc$aiData.write(output);
	}

	@Inject(method = "readAdditionalSaveData", at = @At("TAIL"))
	private void aoc$readAiData(ValueInput input, CallbackInfo info) {
		aoc$aiData.read(input);
	}
}

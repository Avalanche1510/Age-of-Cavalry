package com.aoc.ai;

import java.util.Optional;

import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;

public class AocAiData {
	public static final String TAG = "AocAi";

	private static final float DEFAULT_SHIELD_RANGE = 8.0F;
	private static final float DEFAULT_SHIELD_CHANCE = 0.35F;
	private static final int DEFAULT_SHIELD_MIN_USE_TICKS = 20;
	private static final int DEFAULT_SHIELD_MAX_USE_TICKS = 50;
	private static final int DEFAULT_SHIELD_COOLDOWN_TICKS = 40;

	private boolean configured;
	private boolean shield;
	private float shieldRange = DEFAULT_SHIELD_RANGE;
	private float shieldChance = DEFAULT_SHIELD_CHANCE;
	private int shieldMinUseTicks = DEFAULT_SHIELD_MIN_USE_TICKS;
	private int shieldMaxUseTicks = DEFAULT_SHIELD_MAX_USE_TICKS;
	private int shieldCooldownTicks = DEFAULT_SHIELD_COOLDOWN_TICKS;
	private int shieldUseTicks;
	private int shieldCooldown;

	public boolean canUseShield() {
		return configured && shield;
	}

	public float shieldRange() {
		return shieldRange;
	}

	public float shieldChance() {
		return shieldChance;
	}

	public int shieldMinUseTicks() {
		return shieldMinUseTicks;
	}

	public int shieldMaxUseTicks() {
		return shieldMaxUseTicks;
	}

	public int shieldCooldownTicks() {
		return shieldCooldownTicks;
	}

	public int shieldUseTicks() {
		return shieldUseTicks;
	}

	public void setShieldUseTicks(int shieldUseTicks) {
		this.shieldUseTicks = Math.max(0, shieldUseTicks);
	}

	public int shieldCooldown() {
		return shieldCooldown;
	}

	public void setShieldCooldown(int shieldCooldown) {
		this.shieldCooldown = Math.max(0, shieldCooldown);
	}

	public void tickShieldCooldown() {
		if (shieldCooldown > 0) {
			shieldCooldown--;
		}
	}

	public void read(ValueInput input) {
		Optional<ValueInput> aiInput = input.child(TAG);
		if (aiInput.isEmpty()) {
			clear();
			return;
		}

		ValueInput ai = aiInput.get();
		configured = true;
		shield = ai.getBooleanOr("shield", false);
		shieldRange = clamp(ai.getFloatOr("shieldRange", DEFAULT_SHIELD_RANGE), 0.0F, 64.0F);
		shieldChance = clamp(ai.getFloatOr("shieldChance", DEFAULT_SHIELD_CHANCE), 0.0F, 1.0F);
		shieldMinUseTicks = clamp(ai.getIntOr("shieldMinUseTicks", DEFAULT_SHIELD_MIN_USE_TICKS), 1, 200);
		shieldMaxUseTicks = clamp(ai.getIntOr("shieldMaxUseTicks", DEFAULT_SHIELD_MAX_USE_TICKS), shieldMinUseTicks, 400);
		shieldCooldownTicks = clamp(ai.getIntOr("shieldCooldownTicks", DEFAULT_SHIELD_COOLDOWN_TICKS), 0, 400);
		shieldUseTicks = 0;
		shieldCooldown = 0;
	}

	public void write(ValueOutput output) {
		if (!configured) {
			return;
		}

		ValueOutput ai = output.child(TAG);
		ai.putBoolean("shield", shield);
		ai.putFloat("shieldRange", shieldRange);
		ai.putFloat("shieldChance", shieldChance);
		ai.putInt("shieldMinUseTicks", shieldMinUseTicks);
		ai.putInt("shieldMaxUseTicks", shieldMaxUseTicks);
		ai.putInt("shieldCooldownTicks", shieldCooldownTicks);
	}

	private void clear() {
		configured = false;
		shield = false;
		shieldRange = DEFAULT_SHIELD_RANGE;
		shieldChance = DEFAULT_SHIELD_CHANCE;
		shieldMinUseTicks = DEFAULT_SHIELD_MIN_USE_TICKS;
		shieldMaxUseTicks = DEFAULT_SHIELD_MAX_USE_TICKS;
		shieldCooldownTicks = DEFAULT_SHIELD_COOLDOWN_TICKS;
		shieldUseTicks = 0;
		shieldCooldown = 0;
	}

	private static int clamp(int value, int min, int max) {
		return Math.max(min, Math.min(max, value));
	}

	private static float clamp(float value, float min, float max) {
		return Math.max(min, Math.min(max, value));
	}
}

package com.aoc.ai;

import java.util.Optional;

import com.mojang.serialization.Codec;
import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;

public class AocShieldAiData {
	public static final String TAG = "shield";

	private static final float DEFAULT_RANGE = 8.0F;
	private static final float DEFAULT_CHANCE = 0.35F;
	private static final int DEFAULT_MIN_USE_TICKS = 20;
	private static final int DEFAULT_MAX_USE_TICKS = 50;
	private static final int DEFAULT_COOLDOWN_TICKS = 40;
	private static final float DEFAULT_BLOCKING_ANGLE = 90.0F;
	private static final int DEFAULT_AXE_DISABLE_COOLDOWN_TICKS = 100;

	private boolean configured;
	private boolean enabled;
	private float range = DEFAULT_RANGE;
	private float chance = DEFAULT_CHANCE;
	private int minUseTicks = DEFAULT_MIN_USE_TICKS;
	private int maxUseTicks = DEFAULT_MAX_USE_TICKS;
	private int cooldownTicks = DEFAULT_COOLDOWN_TICKS;
	private float blockingAngle = DEFAULT_BLOCKING_ANGLE;
	private int axeDisableCooldownTicks = DEFAULT_AXE_DISABLE_COOLDOWN_TICKS;
	private int useTicks;
	private int cooldown;
	private int disabledCooldown;

	public boolean isConfigured() {
		return configured;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public boolean canUse() {
		return configured && enabled && disabledCooldown <= 0;
	}

	public float range() {
		return range;
	}

	public float chance() {
		return chance;
	}

	public int minUseTicks() {
		return minUseTicks;
	}

	public int maxUseTicks() {
		return maxUseTicks;
	}

	public int cooldownTicks() {
		return cooldownTicks;
	}

	public float blockingAngle() {
		return blockingAngle;
	}

	public int axeDisableCooldownTicks() {
		return axeDisableCooldownTicks;
	}

	public int useTicks() {
		return useTicks;
	}

	public void setUseTicks(int useTicks) {
		this.useTicks = Math.max(0, useTicks);
	}

	public int cooldown() {
		return cooldown;
	}

	public void setCooldown(int cooldown) {
		this.cooldown = Math.max(0, cooldown);
	}

	public int disabledCooldown() {
		return disabledCooldown;
	}

	public void setDisabledCooldown(int disabledCooldown) {
		this.disabledCooldown = Math.max(0, disabledCooldown);
	}

	public void tickCooldowns() {
		if (cooldown > 0) {
			cooldown--;
		}

		if (disabledCooldown > 0) {
			disabledCooldown--;
		}
	}

	public void read(ValueInput aiInput) {
		Optional<ValueInput> shieldInput = aiInput.child(TAG);
		if (shieldInput.isPresent()) {
			readNested(shieldInput.get());
			return;
		}

		readLegacyFlat(aiInput);
	}

	public void write(ValueOutput output) {
		output.putBoolean("enable", enabled);
		output.putFloat("range", range);
		output.putFloat("shieldChance", chance);
		output.putInt("minUseTicks", minUseTicks);
		output.putInt("maxUseTicks", maxUseTicks);
		output.putInt("cooldownTicks", cooldownTicks);
		output.putFloat("blockingAngle", blockingAngle);
		output.putInt("axeDisableCooldownTicks", axeDisableCooldownTicks);
	}

	public void clear() {
		configured = false;
		enabled = false;
		range = DEFAULT_RANGE;
		chance = DEFAULT_CHANCE;
		minUseTicks = DEFAULT_MIN_USE_TICKS;
		maxUseTicks = DEFAULT_MAX_USE_TICKS;
		cooldownTicks = DEFAULT_COOLDOWN_TICKS;
		blockingAngle = DEFAULT_BLOCKING_ANGLE;
		axeDisableCooldownTicks = DEFAULT_AXE_DISABLE_COOLDOWN_TICKS;
		useTicks = 0;
		cooldown = 0;
		disabledCooldown = 0;
	}

	private void readNested(ValueInput shieldInput) {
		if (!hasAnyShieldField(shieldInput, "enable", "range", "shieldRange", "chance", "shieldChance",
				"minUseTicks", "shieldMinUseTicks", "maxUseTicks", "shieldMaxUseTicks", "cooldownTicks",
				"shieldCooldownTicks", "blockingAngle", "axeDisableCooldownTicks")) {
			clear();
			return;
		}

		configured = true;
		enabled = getBooleanOr(shieldInput, "enable", false);
		range = clamp(getFloatOr(shieldInput, DEFAULT_RANGE, "range", "shieldRange"), 0.0F, 64.0F);
		chance = clamp(getFloatOr(shieldInput, DEFAULT_CHANCE, "shieldChance", "chance"), 0.0F, 1.0F);
		minUseTicks = clamp(getIntOr(shieldInput, DEFAULT_MIN_USE_TICKS, "minUseTicks", "shieldMinUseTicks"), 1, 200);
		maxUseTicks = clamp(getIntOr(shieldInput, DEFAULT_MAX_USE_TICKS, "maxUseTicks", "shieldMaxUseTicks"),
				minUseTicks, 400);
		cooldownTicks = clamp(getIntOr(shieldInput, DEFAULT_COOLDOWN_TICKS, "cooldownTicks", "shieldCooldownTicks"),
				0, 400);
		blockingAngle = clamp(getFloatOr(shieldInput, DEFAULT_BLOCKING_ANGLE, "blockingAngle"), 1.0F, 180.0F);
		axeDisableCooldownTicks = clamp(getIntOr(shieldInput, DEFAULT_AXE_DISABLE_COOLDOWN_TICKS,
				"axeDisableCooldownTicks"), 0, 600);
		useTicks = 0;
		cooldown = 0;
		disabledCooldown = 0;
	}

	private void readLegacyFlat(ValueInput aiInput) {
		if (!hasAnyShieldField(aiInput, "shield", "shieldRange", "shieldChance", "shieldMinUseTicks",
				"shieldMaxUseTicks", "shieldCooldownTicks")) {
			clear();
			return;
		}

		configured = true;
		enabled = getBooleanOr(aiInput, "shield", false);
		range = clamp(getFloatOr(aiInput, DEFAULT_RANGE, "shieldRange"), 0.0F, 64.0F);
		chance = clamp(getFloatOr(aiInput, DEFAULT_CHANCE, "shieldChance"), 0.0F, 1.0F);
		minUseTicks = clamp(getIntOr(aiInput, DEFAULT_MIN_USE_TICKS, "shieldMinUseTicks"), 1, 200);
		maxUseTicks = clamp(getIntOr(aiInput, DEFAULT_MAX_USE_TICKS, "shieldMaxUseTicks"), minUseTicks, 400);
		cooldownTicks = clamp(getIntOr(aiInput, DEFAULT_COOLDOWN_TICKS, "shieldCooldownTicks"), 0, 400);
		blockingAngle = DEFAULT_BLOCKING_ANGLE;
		axeDisableCooldownTicks = DEFAULT_AXE_DISABLE_COOLDOWN_TICKS;
		useTicks = 0;
		cooldown = 0;
		disabledCooldown = 0;
	}

	private static boolean hasAnyShieldField(ValueInput input, String... keys) {
		for (String key : keys) {
			if (hasField(input, key)) {
				return true;
			}
		}

		return false;
	}

	private static boolean hasField(ValueInput input, String key) {
		return input.read(key, Codec.BOOL).isPresent()
				|| input.read(key, Codec.BYTE).isPresent()
				|| input.getInt(key).isPresent()
				|| input.read(key, Codec.FLOAT).isPresent()
				|| input.read(key, Codec.DOUBLE).isPresent();
	}

	private static boolean getBooleanOr(ValueInput input, String key, boolean defaultValue) {
		Optional<Boolean> booleanValue = input.read(key, Codec.BOOL);
		if (booleanValue.isPresent()) {
			return booleanValue.get();
		}

		Optional<Byte> byteValue = input.read(key, Codec.BYTE);
		if (byteValue.isPresent()) {
			return byteValue.get() != 0;
		}

		Optional<Integer> intValue = input.getInt(key);
		if (intValue.isPresent()) {
			return intValue.get() != 0;
		}

		return input.getBooleanOr(key, defaultValue);
	}

	private static int getIntOr(ValueInput input, int defaultValue, String... keys) {
		for (String key : keys) {
			Optional<Integer> value = input.getInt(key);
			if (value.isPresent()) {
				return value.get();
			}
		}

		return defaultValue;
	}

	private static float getFloatOr(ValueInput input, float defaultValue, String... keys) {
		for (String key : keys) {
			Optional<Float> floatValue = input.read(key, Codec.FLOAT);
			if (floatValue.isPresent()) {
				return floatValue.get();
			}

			Optional<Double> doubleValue = input.read(key, Codec.DOUBLE);
			if (doubleValue.isPresent()) {
				return doubleValue.get().floatValue();
			}

			Optional<Integer> intValue = input.getInt(key);
			if (intValue.isPresent()) {
				return intValue.get();
			}
		}

		return defaultValue;
	}

	private static int clamp(int value, int min, int max) {
		return Math.max(min, Math.min(max, value));
	}

	private static float clamp(float value, float min, float max) {
		return Math.max(min, Math.min(max, value));
	}
}

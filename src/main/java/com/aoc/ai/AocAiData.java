package com.aoc.ai;

import java.util.Optional;

import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;

public class AocAiData {
	public static final String TAG = "AocAi";

	private final AocShieldAiData shield = new AocShieldAiData();

	public AocShieldAiData shield() {
		return shield;
	}

	public boolean isConfigured() {
		return shield.isConfigured();
	}

	public void read(ValueInput input) {
		Optional<ValueInput> aiInput = input.child(TAG);
		if (aiInput.isEmpty()) {
			clear();
			return;
		}

		shield.read(aiInput.get());
	}

	public void write(ValueOutput output) {
		if (!isConfigured()) {
			return;
		}

		ValueOutput ai = output.child(TAG);
		if (shield.isConfigured()) {
			shield.write(ai.child(AocShieldAiData.TAG));
		}
	}

	private void clear() {
		shield.clear();
	}
}

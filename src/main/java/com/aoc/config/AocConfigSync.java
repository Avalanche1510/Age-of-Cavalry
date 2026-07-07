package com.aoc.config;

import com.aoc.AgeOfCavalry;
import net.minecraft.server.MinecraftServer;

public final class AocConfigSync {
	public static final String OBJECTIVE = "aoc_config";
	private static boolean objectiveEnsured = false;

	private AocConfigSync() {
	}

	public static void sync(MinecraftServer server, AocConfig config) {
		ensureObjective(server);
		set(server, "exp_scaling", config.features.experienceScaling);
		set(server, "gifted_mobs", config.features.giftedMobs);
		set(server, "regional_spawns", config.features.regionalSpawns);
		set(server, "spawn_features", config.features.entitySpawnFeatures);
		set(server, "dynamic_lights", config.features.dynamicLights);
		set(server, "happy_ghast", config.features.happyGhastFeatures);
		set(server, "orbital_cannon", config.features.orbitalCannon);
		set(server, "start_turbulence", config.balance.startingTurbulence);
		set(server, "ghast_bomb_cd", config.balance.happyGhastBombingCooldownTicks);
		AgeOfCavalry.LOGGER.info("Synced Age of Cavalry config to scoreboard objective '{}'.", OBJECTIVE);
	}

	private static void ensureObjective(MinecraftServer server) {
		if (objectiveEnsured) {
			return;
		}
		server.getCommands().performPrefixedCommand(
				server.createCommandSourceStack(),
				"scoreboard objectives add " + OBJECTIVE + " dummy \"AoC Config\""
		);
		objectiveEnsured = true;
	}

	private static void set(MinecraftServer server, String key, boolean value) {
		set(server, key, value ? 1 : 0);
	}

	private static void set(MinecraftServer server, String key, int value) {
		server.getCommands().performPrefixedCommand(
				server.createCommandSourceStack(),
				"scoreboard players set " + key + " " + OBJECTIVE + " " + value
		);
	}
}

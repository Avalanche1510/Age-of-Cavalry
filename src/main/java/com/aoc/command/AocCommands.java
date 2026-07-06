package com.aoc.command;

import com.aoc.AgeOfCavalry;
import com.aoc.config.AocConfig;
import com.aoc.config.AocConfigSync;
import com.mojang.brigadier.Command;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.server.command.ServerCommandSource;
import net.minecraft.text.Text;

import static net.minecraft.server.command.CommandManager.literal;

public final class AocCommands {
	private AocCommands() {
	}

	public static void register() {
		CommandRegistrationCallback.EVENT.register((dispatcher, registryAccess, environment) -> dispatcher.register(
				literal("aoc")
						.then(literal("config")
								.then(literal("status")
										.executes(context -> status(context.getSource())))
								.then(literal("reload")
										.requires(source -> source.hasPermissionLevel(2))
										.executes(context -> reload(context.getSource())))
								.then(literal("write-defaults")
										.requires(source -> source.hasPermissionLevel(2))
										.executes(context -> writeDefaults(context.getSource()))))
		));
	}

	private static int status(ServerCommandSource source) {
		AocConfig config = AgeOfCavalry.getConfig();
		source.sendFeedback(() -> Text.literal("Age of Cavalry config: " + AocConfig.configPath()), false);
		source.sendFeedback(() -> Text.literal("features: experienceScaling=" + config.features.experienceScaling
				+ ", giftedMobs=" + config.features.giftedMobs
				+ ", regionalSpawns=" + config.features.regionalSpawns
				+ ", entitySpawnFeatures=" + config.features.entitySpawnFeatures), false);
		source.sendFeedback(() -> Text.literal("features: dynamicLights=" + config.features.dynamicLights
				+ ", happyGhastFeatures=" + config.features.happyGhastFeatures
				+ ", orbitalCannon=" + config.features.orbitalCannon), false);
		source.sendFeedback(() -> Text.literal("balance: startingTurbulence=" + config.balance.startingTurbulence
				+ ", happyGhastBombingCooldownTicks=" + config.balance.happyGhastBombingCooldownTicks), false);
		source.sendFeedback(() -> Text.literal("scoreboard objective: " + AocConfigSync.OBJECTIVE), false);
		return Command.SINGLE_SUCCESS;
	}

	private static int reload(ServerCommandSource source) {
		AocConfig config = AgeOfCavalry.reloadConfig();
		AocConfigSync.sync(source.getServer(), config);
		if (config.server.announceConfigReload) {
			source.sendFeedback(() -> Text.literal("Reloaded Age of Cavalry config and synced scoreboard values."), true);
		} else {
			source.sendFeedback(() -> Text.literal("Reloaded Age of Cavalry config."), false);
		}
		return Command.SINGLE_SUCCESS;
	}

	private static int writeDefaults(ServerCommandSource source) {
		AocConfig.writeDefaultsCopy();
		source.sendFeedback(() -> Text.literal("Wrote default config copy to " + AocConfig.defaultsPath()), false);
		return Command.SINGLE_SUCCESS;
	}
}

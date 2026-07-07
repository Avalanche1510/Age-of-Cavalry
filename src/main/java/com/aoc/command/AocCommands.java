package com.aoc.command;

import com.aoc.AgeOfCavalry;
import com.aoc.config.AocConfig;
import com.aoc.config.AocConfigSync;
import com.mojang.brigadier.Command;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.network.chat.Component;
import net.minecraft.server.permissions.Permissions;

import static net.minecraft.commands.Commands.literal;

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
										.requires(source -> source.permissions().hasPermission(Permissions.COMMANDS_GAMEMASTER))
										.executes(context -> reload(context.getSource())))
								.then(literal("write-defaults")
										.requires(source -> source.permissions().hasPermission(Permissions.COMMANDS_GAMEMASTER))
										.executes(context -> writeDefaults(context.getSource()))))
		));
	}

	private static int status(CommandSourceStack source) {
		AocConfig config = AgeOfCavalry.getConfig();
		source.sendSuccess(() -> Component.literal("Age of Cavalry config: " + AocConfig.configPath()), false);
		source.sendSuccess(() -> Component.literal("features: experienceScaling=" + config.features.experienceScaling
				+ ", giftedMobs=" + config.features.giftedMobs
				+ ", regionalSpawns=" + config.features.regionalSpawns
				+ ", entitySpawnFeatures=" + config.features.entitySpawnFeatures), false);
		source.sendSuccess(() -> Component.literal("features: dynamicLights=" + config.features.dynamicLights
				+ ", happyGhastFeatures=" + config.features.happyGhastFeatures
				+ ", orbitalCannon=" + config.features.orbitalCannon), false);
		source.sendSuccess(() -> Component.literal("balance: startingTurbulence=" + config.balance.startingTurbulence
				+ ", happyGhastBombingCooldownTicks=" + config.balance.happyGhastBombingCooldownTicks), false);
		source.sendSuccess(() -> Component.literal("scoreboard objective: " + AocConfigSync.OBJECTIVE), false);
		return Command.SINGLE_SUCCESS;
	}

	private static int reload(CommandSourceStack source) {
		AocConfig config = AgeOfCavalry.reloadConfig();
		AocConfigSync.sync(source.getServer(), config);
		if (config.server.announceConfigReload) {
			source.sendSuccess(() -> Component.literal("Reloaded Age of Cavalry config and synced scoreboard values."), true);
		} else {
			source.sendSuccess(() -> Component.literal("Reloaded Age of Cavalry config."), false);
		}
		return Command.SINGLE_SUCCESS;
	}

	private static int writeDefaults(CommandSourceStack source) {
		AocConfig.writeDefaultsCopy();
		source.sendSuccess(() -> Component.literal("Wrote default config copy to " + AocConfig.defaultsPath()), false);
		return Command.SINGLE_SUCCESS;
	}
}

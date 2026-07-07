package com.aoc.command;

import com.aoc.AgeOfCavalry;
import com.aoc.config.AocConfig;
import com.aoc.config.AocConfigSync;
import com.mojang.brigadier.Command;
import com.mojang.brigadier.arguments.BoolArgumentType;
import com.mojang.brigadier.arguments.IntegerArgumentType;
import com.mojang.brigadier.builder.LiteralArgumentBuilder;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.network.chat.Component;
import net.minecraft.server.permissions.Permissions;

import static net.minecraft.commands.Commands.argument;
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
								.then(literal("set")
										.requires(source -> source.permissions().hasPermission(Permissions.COMMANDS_GAMEMASTER))
										.then(booleanSetting("experienceScaling", (config, value) -> config.features.experienceScaling = value))
										.then(booleanSetting("giftedMobs", (config, value) -> config.features.giftedMobs = value))
										.then(booleanSetting("regionalSpawns", (config, value) -> config.features.regionalSpawns = value))
										.then(booleanSetting("entitySpawnFeatures", (config, value) -> config.features.entitySpawnFeatures = value))
										.then(booleanSetting("happyGhastFeatures", (config, value) -> config.features.happyGhastFeatures = value))
										.then(booleanSetting("orbitalCannon", (config, value) -> config.features.orbitalCannon = value))
										.then(integerSetting("startingTurbulence", 0, 1200, (config, value) -> config.balance.startingTurbulence = value))
										.then(integerSetting("happyGhastBombingCooldownTicks", 1, 72000, (config, value) -> config.balance.happyGhastBombingCooldownTicks = value))
										.then(booleanSetting("announceConfigReload", (config, value) -> config.server.announceConfigReload = value)))
								.then(literal("reload")
										.requires(source -> source.permissions().hasPermission(Permissions.COMMANDS_GAMEMASTER))
										.executes(context -> reload(context.getSource())))
								.then(literal("write-defaults")
										.requires(source -> source.permissions().hasPermission(Permissions.COMMANDS_GAMEMASTER))
										.executes(context -> writeDefaults(context.getSource()))))
		));
	}

	private static LiteralArgumentBuilder<CommandSourceStack> booleanSetting(String name, BooleanConfigSetter setter) {
		return literal(name)
				.then(argument("value", BoolArgumentType.bool())
						.executes(context -> setBoolean(
								context.getSource(),
								name,
								BoolArgumentType.getBool(context, "value"),
								setter
						)));
	}

	private static LiteralArgumentBuilder<CommandSourceStack> integerSetting(String name, int min, int max, IntConfigSetter setter) {
		return literal(name)
				.then(argument("value", IntegerArgumentType.integer(min, max))
						.executes(context -> setInteger(
								context.getSource(),
								name,
								IntegerArgumentType.getInteger(context, "value"),
								setter
						)));
	}

	private static int status(CommandSourceStack source) {
		AocConfig config = AgeOfCavalry.getConfig();
		source.sendSuccess(() -> Component.literal("Age of Cavalry config: " + AocConfig.configPath()), false);
		source.sendSuccess(() -> Component.literal("features: experienceScaling=" + config.features.experienceScaling
				+ ", giftedMobs=" + config.features.giftedMobs
				+ ", regionalSpawns=" + config.features.regionalSpawns
				+ ", entitySpawnFeatures=" + config.features.entitySpawnFeatures), false);
		source.sendSuccess(() -> Component.literal("features: happyGhastFeatures=" + config.features.happyGhastFeatures
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

	private static int setBoolean(CommandSourceStack source, String name, boolean value, BooleanConfigSetter setter) {
		AocConfig config = AgeOfCavalry.getConfig();
		setter.set(config, value);
		return saveAndSync(source, name, Boolean.toString(value), config);
	}

	private static int setInteger(CommandSourceStack source, String name, int value, IntConfigSetter setter) {
		AocConfig config = AgeOfCavalry.getConfig();
		setter.set(config, value);
		return saveAndSync(source, name, Integer.toString(value), config);
	}

	private static int saveAndSync(CommandSourceStack source, String name, String value, AocConfig config) {
		AocConfig.save(config);
		AocConfigSync.sync(source.getServer(), config);
		source.sendSuccess(() -> Component.literal("Set " + name + " to " + value + " and synced config."), true);
		return Command.SINGLE_SUCCESS;
	}

	private static int writeDefaults(CommandSourceStack source) {
		AocConfig.writeDefaultsCopy();
		source.sendSuccess(() -> Component.literal("Wrote default config copy to " + AocConfig.defaultsPath()), false);
		return Command.SINGLE_SUCCESS;
	}

	@FunctionalInterface
	private interface BooleanConfigSetter {
		void set(AocConfig config, boolean value);
	}

	@FunctionalInterface
	private interface IntConfigSetter {
		void set(AocConfig config, int value);
	}
}

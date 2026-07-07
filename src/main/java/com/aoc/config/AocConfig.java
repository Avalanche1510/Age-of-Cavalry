package com.aoc.config;

import com.aoc.AgeOfCavalry;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
import net.fabricmc.loader.api.FabricLoader;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

public final class AocConfig {
	private static final Gson GSON = new GsonBuilder()
			.setPrettyPrinting()
			.disableHtmlEscaping()
			.create();

	public int schemaVersion = 1;
	public String readMe = "Age of Cavalry server config. Edit this file, then run /aoc config reload in game.";
	public Features features = new Features();
	public Balance balance = new Balance();
	public Server server = new Server();

	public static Path configPath() {
		return FabricLoader.getInstance().getConfigDir().resolve("age-of-cavalry.json");
	}

	public static Path defaultsPath() {
		return FabricLoader.getInstance().getConfigDir().resolve("age-of-cavalry.defaults.json");
	}

	public static AocConfig load() {
		Path path = configPath();
		if (Files.notExists(path)) {
			AocConfig defaults = defaults();
			write(path, defaults);
			return defaults;
		}

		try (Reader reader = Files.newBufferedReader(path, StandardCharsets.UTF_8)) {
			AocConfig config = GSON.fromJson(reader, AocConfig.class);
			if (config == null) {
				AgeOfCavalry.LOGGER.warn("Config file {} was empty; using defaults.", path);
				return defaults();
			}

			config.normalize();
			return config;
		} catch (IOException | JsonParseException exception) {
			AgeOfCavalry.LOGGER.warn("Failed to read {}; using defaults.", path, exception);
			return defaults();
		}
	}

	public static AocConfig defaults() {
		AocConfig config = new AocConfig();
		config.normalize();
		return config;
	}

	public static void writeDefaultsCopy() {
		write(defaultsPath(), defaults());
	}

	public static void save(AocConfig config) {
		config.normalize();
		write(configPath(), config);
	}

	private static void write(Path path, AocConfig config) {
		try {
			Files.createDirectories(path.getParent());
			try (Writer writer = Files.newBufferedWriter(path, StandardCharsets.UTF_8)) {
				GSON.toJson(config, writer);
			}
		} catch (IOException exception) {
			AgeOfCavalry.LOGGER.warn("Failed to write config file {}.", path, exception);
		}
	}

	public void normalize() {
		if (features == null) {
			features = new Features();
		}
		if (balance == null) {
			balance = new Balance();
		}
		if (server == null) {
			server = new Server();
		}

		balance.startingTurbulence = clamp(balance.startingTurbulence, 0, 1200);
		balance.happyGhastBombingCooldownTicks = clamp(balance.happyGhastBombingCooldownTicks, 1, 72000);
	}

	private static int clamp(int value, int min, int max) {
		return Math.max(min, Math.min(max, value));
	}

	public static final class Features {
		public String readMe = "Feature toggles. Disabled features are skipped by datapack functions after config sync.";
		public boolean experienceScaling = true;
		public boolean giftedMobs = true;
		public boolean regionalSpawns = true;
		public boolean entitySpawnFeatures = true;
		public boolean happyGhastFeatures = true;
		public boolean orbitalCannon = true;
	}

	public static final class Balance {
		public String readMe = "Small numeric knobs used by existing datapack logic.";
		public int startingTurbulence = 100;
		public int happyGhastBombingCooldownTicks = 40;
	}

	public static final class Server {
		public String readMe = "Server-side behavior for this config system.";
		public boolean announceConfigReload = true;
	}
}

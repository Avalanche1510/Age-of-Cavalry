package com.aoc;

import com.aoc.command.AocCommands;
import com.aoc.config.AocConfig;
import com.aoc.config.AocConfigSync;
import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.event.lifecycle.v1.ServerLifecycleEvents;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AgeOfCavalry implements ModInitializer {
	public static final String MOD_ID = "age-of-cavalry";
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);
	private static AocConfig config = AocConfig.defaults();

	@Override
	public void onInitialize() {
		config = AocConfig.load();
		AocCommands.register();
		ServerLifecycleEvents.SERVER_STARTED.register(server -> AocConfigSync.sync(server, config));

		LOGGER.info("Age of Cavalry loaded config from {}.", AocConfig.configPath());
	}

	public static AocConfig getConfig() {
		return config;
	}

	public static AocConfig reloadConfig() {
		config = AocConfig.load();
		return config;
	}

	public static AocConfig resetConfigToDefaults() {
		config = AocConfig.defaults();
		AocConfig.save(config);
		return config;
	}
}

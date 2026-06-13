
execute as @s store result score @s squadNum run random value 1..100
execute if biome ~ ~ ~ terralith:frozen_cliffs as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:glacial_chasm as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:cold_shrubland as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:wintry_lowlands as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:wintry_forest as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:alpha_islands_winter as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:skylands_winter as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:snowy_cherry_grove as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:snowy_maple_forest as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ terralith:snowy_shield as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:frozen_ocean as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:deep_frozen_ocean as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:frozen_peaks as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:frozen_river as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:ice_spikes as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:snowy_beach as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:snowy_plains as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:snowy_slopes as @s store result score @s squadNum run random value 1..140
execute if biome ~ ~ ~ minecraft:snowy_taiga as @s store result score @s squadNum run random value 1..140


execute as @s if score @s squadNum matches 1..25 run function main:squad/reinforced_squad/unit/villager_unit/crossbow_guard
execute as @s if score @s squadNum matches 26..40 run function main:squad/reinforced_squad/unit/villager_unit/axe_guard
execute as @s if score @s squadNum matches 41..75 run function main:squad/reinforced_squad/unit/villager_unit/shield_guard
execute as @s if score @s squadNum matches 76..85 run function main:squad/reinforced_squad/unit/villager_unit/tank_guard
execute as @s if score @s squadNum matches 85..90 run function main:squad/reinforced_squad/unit/villager_unit/iron_golem
execute as @s if score @s squadNum matches 101..130 run function main:squad/reinforced_squad/unit/villager_unit/snow_golem
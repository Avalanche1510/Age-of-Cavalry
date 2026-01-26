scoreboard players set @s AlreadySpawned 0
# 地狱 - 1
execute if dimension minecraft:the_nether run function main:squad/reinforced_squad/undead_region/nether_general

# 冰雪群系 - 9
execute if biome ~ ~ ~ minecraft:frozen_ocean run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:deep_frozen_ocean run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:frozen_peaks run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:frozen_river run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:ice_spikes run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:snowy_beach run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:snowy_plains run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:snowy_slopes run function main:squad/reinforced_squad/undead_region/north_rider
execute if biome ~ ~ ~ minecraft:snowy_taiga run function main:squad/reinforced_squad/undead_region/north_rider

# 沙漠群系 - 4
execute if biome ~ ~ ~ minecraft:desert run function main:squad/reinforced_squad/undead_region/desert_rider
execute if biome ~ ~ ~ minecraft:badlands run function main:squad/reinforced_squad/undead_region/desert_rider
execute if biome ~ ~ ~ minecraft:eroded_badlands run function main:squad/reinforced_squad/undead_region/desert_rider
execute if biome ~ ~ ~ minecraft:wooded_badlands run function main:squad/reinforced_squad/undead_region/desert_rider

# 沼泽群系 - 2
execute if biome ~ ~ ~ minecraft:swamp run function main:squad/reinforced_squad/undead_region/swamp_rider
execute if biome ~ ~ ~ minecraft:mangrove_swamp run function main:squad/reinforced_squad/undead_region/swamp_rider

# terralith群系 - 27
function main:squad/reinforced_squad/undead_region/select_by_biome_terralith

execute if score @s AlreadySpawned matches 0 run function main:squad/reinforced_squad/undead_rider
execute if score @s AlreadySpawned matches 1 run scoreboard players set @s AlreadySpawned 0
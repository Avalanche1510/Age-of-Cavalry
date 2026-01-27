summon marker ~ ~ ~ {Tags:["light_source"]}
execute at @n[type=marker,tag=light_source] run forceload add ~4 ~4 ~-4 ~-4
execute at @n[type=marker,tag=light_source] run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:cave_air strict
execute at @n[type=marker,tag=light_source] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light[level=12] replace minecraft:air strict


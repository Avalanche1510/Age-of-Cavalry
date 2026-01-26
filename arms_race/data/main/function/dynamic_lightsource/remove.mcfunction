execute at @a run execute as @e[type=marker,tag=light_source] run execute at @s run forceload remove ~4 ~4 ~-4 ~-4
execute at @a run execute as @e[type=marker,tag=light_source] run execute at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:light[level=12] strict
execute at @a run execute as @e[type=marker,tag=light_source] run kill @s
execute as @a at @s if dimension minecraft:overworld run execute unless entity @n[type=marker,distance=..192,tag=region_center] run function main:region/geographical_spawn

execute as @a at @s if entity @n[type=marker,tag=region_center,tag=neutral,distance=..192] run scoreboard players set @s last_region_type 0
execute as @a at @s if entity @n[type=marker,tag=region_center,tag=undead_owned,distance=..192] run scoreboard players set @s last_region_type 1
execute as @a at @s if entity @n[type=marker,tag=region_center,tag=illager_owned,distance=..192] run scoreboard players set @s last_region_type 2


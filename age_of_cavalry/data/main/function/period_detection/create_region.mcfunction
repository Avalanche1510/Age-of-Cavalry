execute as @a unless score @s playerHealth matches 0 store result score @s region_y run data get entity @s Pos[1] 1
execute as @a at @s unless score @s playerHealth matches 0 if dimension minecraft:overworld run execute if score @s region_y matches 63.. run execute unless entity @n[type=marker,distance=..192,tag=region_center] run function main:region/random_region

execute as @a at @s unless score @s playerHealth matches 0 if entity @n[type=marker,tag=region_center,tag=neutral,distance=..192] run scoreboard players set @s last_region_type 0
execute as @a at @s unless score @s playerHealth matches 0 if entity @n[type=marker,tag=region_center,tag=undead_owned,distance=..192] run scoreboard players set @s last_region_type 1
execute as @a at @s unless score @s playerHealth matches 0 if entity @n[type=marker,tag=region_center,tag=illager_owned,distance=..192] run scoreboard players set @s last_region_type 2


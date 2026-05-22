execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run scoreboard players operation @s turbulence += @s trend_rate


execute as @n[type=armor_stand,tag=record] if score @s turbulence matches ..0 run scoreboard players set @s turbulence 0
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 1200.. run scoreboard players set @s turbulence 1200
execute as @n[type=armor_stand,tag=record] store result bossbar world_turbulence value run scoreboard players get @s turbulence
execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 0..199 run scoreboard players remove @s turbulence 40
execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 200..399 run scoreboard players remove @s turbulence 30
execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 400..599 run scoreboard players remove @s turbulence 20
execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 600..799 run scoreboard players remove @s turbulence 10
execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 800..999 run scoreboard players remove @s turbulence 5
execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 1000..1199 run scoreboard players add @s turbulence 10

execute as @n[type=armor_stand,tag=record] if score @s turbulence matches ..0 run scoreboard players set @s turbulence 0
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 1200.. run scoreboard players set @s turbulence 1200
execute as @n[type=armor_stand,tag=record] store result bossbar world_turbulence value run scoreboard players get @s turbulence



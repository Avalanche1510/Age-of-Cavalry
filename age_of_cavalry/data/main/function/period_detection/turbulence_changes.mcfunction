execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 0..199 run scoreboard players remove @s turbulence 25
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 200..399 run scoreboard players remove @s turbulence 20
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 400..599 run scoreboard players remove @s turbulence 15
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 600..799 run scoreboard players remove @s turbulence 10
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 800..999 run scoreboard players remove @s turbulence 5
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 1000..1199 run scoreboard players add @s turbulence 10

execute as @e[type=armor_stand,tag=record] if score @s turbulence matches ..0 run scoreboard players set @s turbulence 0
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 1200.. run scoreboard players set @s turbulence 1200
execute as @e[type=armor_stand,tag=record] store result bossbar world_turbulence value run scoreboard players get @s turbulence


execute as @a run scoreboard players remove @s illager_killed 3
execute as @a run scoreboard players remove @s undead_killed 3
execute as @a run scoreboard players remove @s piglin_killed 3
execute as @a if score @s illager_killed matches ..0 run scoreboard players set @s illager_killed 0
execute as @a if score @s undead_killed matches ..0 run scoreboard players set @s undead_killed 0
execute as @a if score @s piglin_killed matches ..0 run scoreboard players set @s piglin_killed 0
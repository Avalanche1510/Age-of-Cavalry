execute as @e[type=snow_golem] unless score @s snowballCD matches 0.. run scoreboard players set @s snowballCD 19
execute as @e[type=snow_golem,tag=normal_mob,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add normal_snowball
execute as @e[type=snow_golem,tag=elite_mob,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add elite_snowball
execute as @e[type=snow_golem,tag=legend_mob,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add legend_snowball
execute as @e[type=snow_golem,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add thrown_by_golem

execute as @e[type=snow_golem,scores={snowballCD=0}] if entity @e[type=snowball,tag=thrown_by_golem] run scoreboard players set @s snowballCD 19

execute as @e[type=snow_golem,scores={snowballCD=0}] if entity @e[type=snowball,tag=thrown_by_golem] run say 1
execute as @e[type=snow_golem,scores={snowballCD=1..}] run scoreboard players remove @s snowballCD 1

execute as @e[type=snowball,tag=thrown_by_golem,tag=!normal_snowball,tag=!elite_snowball,tag=!legend_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run data merge entity @s {TicksFrozen:300}
execute as @e[type=snowball,tag=normal_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run data merge entity @s {TicksFrozen:460}
execute as @e[type=snowball,tag=elite_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run data merge entity @s {TicksFrozen:620}
execute as @e[type=snowball,tag=legend_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run data merge entity @s {TicksFrozen:780}
execute as @e[type=snowball,tag=thrown_by_golem,tag=!normal_snowball,tag=!elite_snowball,tag=!legend_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] slowness 4 0
execute as @e[type=snowball,tag=normal_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] slowness 4 1
execute as @e[type=snowball,tag=elite_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] slowness 4 2
execute as @e[type=snowball,tag=legend_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] slowness 4 3
execute as @e[type=snowball,tag=thrown_by_golem,tag=!normal_snowball,tag=!elite_snowball,tag=!legend_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] weakness 4 0
execute as @e[type=snowball,tag=normal_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] weakness 4 0
execute as @e[type=snowball,tag=elite_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] weakness 4 1
execute as @e[type=snowball,tag=legend_snowball] at @s run effect give @e[distance=..2,team=!villager_party,type=!player] weakness 4 2


execute as @e[type=snowball] at @s run particle snowflake ~ ~ ~ 0.15 0.15 0.15 0.01 1 force
execute as @e[type=snowball,tag=thrown_by_golem] at @s run particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.01 4 force

execute as @e[type=snowball,tag=thrown_by_golem,tag=!normal_snowball,tag=!elite_snowball,tag=!legend_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run damage @s 1.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=normal_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run damage @s 2.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=elite_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run damage @s 4.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=legend_snowball] at @s run execute as @e[distance=..2,team=!villager_party] run damage @s 8.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snow_golem,tag=temporary_golem] run scoreboard players add @s lifeCD 1
execute as @e[type=snow_golem,tag=temporary_golem] if score @s lifeCD matches 3000.. run kill @s
execute as @e[type=snow_golem] at @s run effect give @e[team=illager_party,distance=..16] glowing 2 0 true
execute as @e[type=snow_golem] at @s run effect give @e[team=undead-arthropod_party,distance=..16] glowing 2 0 true
execute as @e[type=snow_golem] at @s run effect give @e[team=piglin_party,distance=..16] glowing 2 0 true
# 雪傀儡和带伤害的雪球
execute as @e[type=snow_golem] unless score @s snowballCD matches 0.. run scoreboard players set @s snowballCD 19
execute as @e[type=snow_golem,tag=normal_mob,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add normal_snowball
execute as @e[type=snow_golem,tag=elite_mob,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add elite_snowball
execute as @e[type=snow_golem,tag=legend_mob,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add legend_snowball
execute as @e[type=snow_golem,scores={snowballCD=0}] at @s run tag @n[distance=..2,type=snowball] add thrown_by_golem

execute as @e[type=snow_golem,scores={snowballCD=0}] if entity @e[type=snowball,tag=thrown_by_golem] run scoreboard players set @s snowballCD 19
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

execute as @e[type=snowball,tag=thrown_by_golem,tag=!normal_snowball,tag=!elite_snowball,tag=!legend_snowball] at @s run execute as @e[distance=..2,team=!villager_party,type=!creeper] run damage @s 1.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=normal_snowball] at @s run execute as @e[distance=..2,team=!villager_party,type=!creeper] run damage @s 2.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=elite_snowball] at @s run execute as @e[distance=..2,team=!villager_party,type=!creeper] run damage @s 4.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=legend_snowball] at @s run execute as @e[distance=..2,team=!villager_party,type=!creeper] run damage @s 8.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=thrown_by_golem,tag=!normal_snowball,tag=!elite_snowball,tag=!legend_snowball] at @s run execute as @e[distance=..2,type=creeper] run damage @s 4.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=normal_snowball] at @s run execute as @e[distance=..2,type=creeper] run damage @s 8.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=elite_snowball] at @s run execute as @e[distance=..2,type=creeper] run damage @s 16.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snowball,tag=legend_snowball] at @s run execute as @e[distance=..2,type=creeper] run damage @s 32.0 minecraft:mob_attack by @n[type=snow_golem]
execute as @e[type=snow_golem,tag=temporary_golem] run scoreboard players add @s lifeCD 1
execute as @e[type=snow_golem,tag=temporary_golem] if score @s lifeCD matches 3000.. run tp ~ -500 ~
# execute as @e[type=snow_golem] at @s run effect give @e[team=illager_party,distance=..16] glowing 2 0 true
# execute as @e[type=snow_golem] at @s run effect give @e[team=undead-arthropod_party,distance=..16] glowing 2 0 true
# execute as @e[type=snow_golem] at @s run effect give @e[team=piglin_party,distance=..16] glowing 2 0 true

# 火焰弹粒子和重力效果
execute as @e[type=fireball] at @s run particle minecraft:lava ~ ~ ~ 0.15 0.15 0.15 0.01 1 force
execute as @e[type=fireball] at @s run particle minecraft:flame ~ ~ ~ 0.15 0.15 0.15 0.01 2 force
execute as @e[type=fireball,tag=explosive] store result score @s fire_ball_gravity run data get entity @s Motion[1] 1000
execute as @e[type=fireball,tag=explosive] run scoreboard players remove @s fire_ball_gravity 32
execute as @e[type=fireball,tag=explosive] store result entity @s Motion[1] double 0.001 run scoreboard players get @s fire_ball_gravity


# 为村民守卫做箭矢的弹道修正

execute as @e[type=arrow,tag=!revised] unless score @s need_revise matches -2147483648..2147483647 run scoreboard players set @s need_revise 0
execute as @e[type=arrow,tag=!revised] store success score @s need_revise run execute on origin if entity @s[type=guardvillagers:guard] run scoreboard players set @s need_revise 1
execute as @e[type=arrow,tag=!revised] if score @s need_revise matches 1 run tag @s add revised
execute as @e[type=arrow,tag=revised,tag=!still_arrow] store result score @s last_arrow_height run scoreboard players get @s arrow_height
execute as @e[type=arrow,tag=revised,tag=!still_arrow] store result score @s arrow_height run data get entity @s Pos[1] 1000
execute as @e[type=arrow,tag=revised,tag=!still_arrow] if score @s last_arrow_height = @s arrow_height run tag @s add still_arrow
execute as @e[type=arrow,tag=revised,tag=!still_arrow] store result score @s arrow_gravity run data get entity @s Motion[1] 1000
execute as @e[type=arrow,tag=revised,tag=!still_arrow] run scoreboard players remove @s arrow_gravity 360
execute as @e[type=arrow,tag=revised,tag=!still_arrow] store result entity @s Motion[1] double 0.001 run scoreboard players get @s arrow_gravity

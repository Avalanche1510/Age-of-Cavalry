# 当阵营生物血量低于50%时，增加冲突点数
execute as @e[tag=!hurted,team=undead-arthropod_party] store result score @s health run data get entity @s Health 1
execute as @e[tag=!hurted,team=illager_party] store result score @s health run data get entity @s Health 1
execute as @e[tag=!hurted,team=piglin_party] store result score @s health run data get entity @s Health 1
# maxHealth已经被设置为50%最大血量了，这里不用除2
execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth run scoreboard players add @s undead_tension 1
execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 1

execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=normal_mob] if score @s health <= @s maxHealth run scoreboard players add @s undead_tension 2
execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=normal_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 2

execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=elite_mob] if score @s health <= @s maxHealth run scoreboard players add @s undead_tension 4
execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=elite_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 4

execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=legend_mob] if score @s health <= @s maxHealth run scoreboard players add @s undead_tension 10
execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=legend_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 10

execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=captain] if score @s health <= @s maxHealth run scoreboard players add @s undead_tension 5
execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party,tag=captain] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 5

execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party] if score @s health <= @s maxHealth at @s run particle angry_villager ~ ~ ~ 0.3 0.3 0.3 0.1 10 force
execute as @e[tag=!hurted,type=!player,team=undead-arthropod_party] if score @s health <= @s maxHealth run tag @s add hurted


execute as @e[tag=!hurted,type=!player,team=illager_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth run scoreboard players add @s illager_tension 2
execute as @e[tag=!hurted,type=!player,team=illager_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 2

execute as @e[tag=!hurted,type=!player,team=illager_party,tag=normal_mob] if score @s health <= @s maxHealth run scoreboard players add @s illager_tension 3
execute as @e[tag=!hurted,type=!player,team=illager_party,tag=normal_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 3

execute as @e[tag=!hurted,type=!player,team=illager_party,tag=elite_mob] if score @s health <= @s maxHealth run scoreboard players add @s illager_tension 6
execute as @e[tag=!hurted,type=!player,team=illager_party,tag=elite_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 6

execute as @e[tag=!hurted,type=!player,team=illager_party,tag=legend_mob] if score @s health <= @s maxHealth run scoreboard players add @s illager_tension 12
execute as @e[tag=!hurted,type=!player,team=illager_party,tag=legend_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 12

execute as @e[tag=!hurted,type=!player,team=illager_party,tag=captain] if score @s health <= @s maxHealth run scoreboard players add @s illager_tension 8
execute as @e[tag=!hurted,type=!player,team=illager_party,tag=captain] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 8

execute as @e[tag=!hurted,type=!player,team=illager_party] if score @s health <= @s maxHealth at @s run particle angry_villager ~ ~ ~ 0.3 0.3 0.3 0.1 10 force
execute as @e[tag=!hurted,type=!player,team=illager_party] if score @s health <= @s maxHealth run tag @s add hurted


execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth run scoreboard players add @s piglin_tension 2
execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 2

execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=normal_mob] if score @s health <= @s maxHealth run scoreboard players add @s piglin_tension 3
execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=normal_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 3

execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=elite_mob] if score @s health <= @s maxHealth run scoreboard players add @s piglin_tension 5
execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=elite_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 5

execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=legend_mob] if score @s health <= @s maxHealth run scoreboard players add @s piglin_tension 15
execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=legend_mob] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 15

execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=captain] if score @s health <= @s maxHealth run scoreboard players add @s piglin_tension 6
execute as @e[tag=!hurted,type=!player,team=piglin_party,tag=captain] if score @s health <= @s maxHealth run scoreboard players add @e[type=armor_stand,tag=record] turbulence 6

execute as @e[tag=!hurted,type=!player,team=piglin_party] if score @s health <= @s maxHealth at @s run particle angry_villager ~ ~ ~ 0.3 0.3 0.3 0.1 10 force
execute as @e[tag=!hurted,type=!player,team=piglin_party] if score @s health <= @s maxHealth run tag @s add hurted
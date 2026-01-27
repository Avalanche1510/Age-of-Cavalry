execute as @e[type=iron_golem] unless score @s guardCD matches 0.. run scoreboard players set @s guardCD 0
execute as @e[type=iron_golem] if score @s guardCD matches 1.. run scoreboard players remove @s guardCD 1
execute as @e[type=iron_golem,scores={guardCD=0}] at @s run execute if entity @e[distance=..8,team=illager_party] unless entity @e[type=snow_golem,distance=..12] run function main:village_upgrade/spawn_snow_golem
execute as @e[type=iron_golem,scores={guardCD=0}] at @s run execute if entity @e[distance=..8,team=undead-arthropod_party] unless entity @e[type=snow_golem,distance=..12] run function main:village_upgrade/spawn_snow_golem
execute as @e[type=iron_golem,scores={guardCD=0}] at @s run execute if entity @e[distance=..8,team=piglin_party] unless entity @e[type=snow_golem,distance=..12] run function main:village_upgrade/spawn_snow_golem


execute as @e[type=iron_golem] unless score @s splitCD matches 0.. run scoreboard players set @s splitCD 3000
execute as @e[type=iron_golem] at @s if score @s splitCD matches 1.. if entity @e[type=villager,distance=..128] run scoreboard players remove @s splitCD 1
execute as @e[type=iron_golem,scores={splitCD=0}] at @s run execute unless entity @e[distance=1..32,type=iron_golem] run execute run summon iron_golem
execute as @e[type=iron_golem,scores={splitCD=0}] at @s run execute unless entity @e[distance=1..32,type=iron_golem] run execute run scoreboard players set @s splitCD 12000


scoreboard players set @s undead_count 0
execute as @e[team=undead-arthropod_party,distance=..192] run scoreboard players add @n[tag=region_center,tag=undead_owned] undead_count 1
execute if score @s undead_count matches ..24 run summon marker ~ ~ ~ {Tags:["regional_undead"]}
execute if score @s undead_count matches ..24 run summon marker ~ ~ ~ {Tags:["regional_undead"]}
execute if score @s undead_count matches ..24 run summon marker ~ ~ ~ {Tags:["regional_undead"]}
execute if score @s undead_count matches ..24 run say 3
scoreboard players set @s undead_count 0

spreadplayers ~ ~ 16 192 false @e[type=marker,tag=regional_undead]
execute as @e[type=marker,tag=regional_undead,distance=..192] at @s run function main:squad/reinforced_squad/select_by_biome_vanilla
execute as @e[type=marker,tag=regional_undead,distance=..192] run kill @s

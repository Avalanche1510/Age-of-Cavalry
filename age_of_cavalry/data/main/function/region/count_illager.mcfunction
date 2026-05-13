scoreboard players set @s illager_count 0
execute as @e[team=illager_party,distance=..192] run scoreboard players add @n[tag=region_center,tag=illager_owned] illager_count 1
execute if score @s illager_count matches ..18 run summon marker ~ ~ ~ {Tags:["regional_illager","g"]}
execute if score @s illager_count matches ..18 run summon marker ~ ~ ~ {Tags:["regional_illager","g"]}
scoreboard players set @s illager_count 0

spreadplayers ~ ~ 16 192 false @e[type=marker,tag=regional_illager]
execute as @e[type=marker,tag=regional_illager,tag=g,distance=..192] at @s run function main:squad/reinforced_squad/illager_general
execute as @e[type=marker,tag=regional_illager,distance=..192] at @s run kill @s

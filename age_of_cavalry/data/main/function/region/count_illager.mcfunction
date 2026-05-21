scoreboard players set @s illager_count 0
execute as @e[team=illager_party,distance=..192] at @s run scoreboard players add @n[tag=region_center,tag=illager_owned] illager_count 1
# 白天增加掠夺者单次刷新数量，且白天的刷新数量上限更高
execute unless score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s illager_count matches ..24 run summon marker ~ ~ ~ {Tags:["regional_illager","g"]}
execute unless score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s illager_count matches ..24 run summon marker ~ ~ ~ {Tags:["regional_illager","g"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s illager_count matches ..18 run summon marker ~ ~ ~ {Tags:["regional_illager","g"]}
scoreboard players set @s illager_count 0

spreadplayers ~ ~ 16 192 false @e[type=marker,tag=regional_illager]
# 掠夺者将不会生成在玩家附近
execute as @e[type=marker,tag=regional_illager] at @s if entity @p[distance=..24] run kill @s
execute as @e[type=marker,tag=regional_illager,tag=g,distance=..192] at @s run function main:squad/reinforced_squad/illager_general
execute as @e[type=marker,tag=regional_illager,distance=..192] at @s run kill @s

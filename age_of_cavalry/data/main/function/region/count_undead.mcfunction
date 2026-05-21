scoreboard players set @s undead_count 0
execute as @e[team=undead-arthropod_party,distance=..192] run scoreboard players set @s height 0
execute as @e[team=undead-arthropod_party,distance=..192] store result score @s height run data get entity @s Pos[1] 1.0
execute as @e[team=undead-arthropod_party,distance=..192] if score @s height matches 60.. at @s run scoreboard players add @n[tag=region_center,tag=undead_owned] undead_count 1
# 夜间增加亡灵单次刷新数量，且夜间的刷新数量上限更高
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s undead_count matches ..32 run summon marker ~ ~ ~ {Tags:["regional_undead"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s undead_count matches ..32 run summon marker ~ ~ ~ {Tags:["regional_undead"]}
execute unless score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s undead_count matches ..16 run summon marker ~ ~ ~ {Tags:["regional_undead"]}
scoreboard players set @s undead_count 0

spreadplayers ~ ~ 16 192 false @e[type=marker,tag=regional_undead]
# 亡灵将不会生成在玩家附近
execute as @e[type=marker,tag=regional_undead] at @s if entity @p[distance=..24] run kill @s
execute as @e[type=marker,tag=regional_undead,distance=..192] at @s run function main:squad/reinforced_squad/select_by_biome_vanilla
execute as @e[type=marker,tag=regional_undead,distance=..192] run kill @s

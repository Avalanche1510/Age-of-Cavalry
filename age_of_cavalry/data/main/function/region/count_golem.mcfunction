scoreboard players set @s golem_count 0
execute as @e[type=iron_golem,distance=..192,tag=limited] at @s run scoreboard players add @n[tag=region_center,tag=villager_owned] golem_count 1
# 夜间增加铁傀儡单次刷新数量
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}
execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}
execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}

scoreboard players set @s golem_count 0
# 铁傀儡将不会生成在玩家附近
spreadplayers ~ ~ 4 192 false @e[type=iron_golem,tag=regional_golem]
execute as @e[type=iron_golem,tag=regional_golem] at @s if entity @p[distance=..8] run tp @s ~ -500 ~
execute as @e[type=iron_golem,tag=regional_golem,distance=..192] run tag @s remove regional_golem

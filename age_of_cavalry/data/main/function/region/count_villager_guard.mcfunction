scoreboard players set @s village_guard_count 0
execute as @e[type=iron_golem,distance=..192,tag=limited] at @s run scoreboard players add @n[tag=region_center,tag=villager_owned] village_guard_count 1
execute as @e[type=guardvillagers:guard,distance=..192,tag=limited] at @s run scoreboard players add @n[tag=region_center,tag=villager_owned] village_guard_count 1
# 夜间增加村庄守卫单次刷新数量
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..32 run summon iron_golem ~ ~ ~ {Tags:["regional_guard","limited"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..32 run summon guardvillagers:guard ~ ~ ~ {Tags:["regional_guard","limited"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..32 run summon guardvillagers:guard ~ ~ ~ {Tags:["regional_guard","limited"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..32 run summon guardvillagers:guard ~ ~ ~ {Tags:["regional_guard","limited"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..32 run summon guardvillagers:guard ~ ~ ~ {Tags:["regional_guard","limited"]}
execute if score @s village_guard_count matches ..24 run summon iron_golem ~ ~ ~ {Tags:["regional_guard","limited"]}
execute if score @s village_guard_count matches ..24 run summon guardvillagers:guard ~ ~ ~ {Tags:["regional_guard","limited"]}
execute if score @s village_guard_count matches ..24 run summon guardvillagers:guard ~ ~ ~ {Tags:["regional_guard","limited"]}

scoreboard players set @s village_guard_count 0
# 村庄守卫将不会生成在玩家附近
spreadplayers ~ ~ 4 96 false @e[type=iron_golem,tag=regional_guard]
spreadplayers ~ ~ 4 96 false @e[type=guardvillagers:guard,tag=regional_guard]
execute as @e[type=iron_golem,tag=regional_guard,distance=..192] at @s if entity @p[distance=..8] run tp @s ~ -500 ~
execute as @e[type=iron_golem,tag=regional_guard,distance=..192] run tag @s remove regional_guard
execute as @e[type=guardvillagers:guard,tag=regional_guard,distance=..192] at @s if entity @p[distance=..8] run tp @s ~ -500 ~
execute as @e[type=guardvillagers:guard,tag=regional_guard,distance=..192] run tag @s remove regional_guard

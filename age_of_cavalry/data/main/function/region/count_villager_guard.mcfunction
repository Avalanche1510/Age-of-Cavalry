scoreboard players set @s village_guard_count 0
execute as @e[type=iron_golem,distance=..192] at @s run scoreboard players add @n[tag=region_center,tag=villager_owned] village_guard_count 1
execute as @e[type=guardvillagers:guard,distance=..192] at @s run scoreboard players add @n[tag=region_center,tag=villager_owned] village_guard_count 1
# 夜间增加村庄守卫单次刷新数量
# 播报已存在的守卫数量
tellraw @a[distance=..192] [{"text":"当前区域内的村庄守卫数量：","color":"yellow"},{"score":{"name":"@n[tag=region_center,tag=villager_owned]","objective":"village_guard_count"},"color":"red"}]
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..30 run summon marker ~ ~ ~ {Tags:["regional_villager"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..30 run summon marker ~ ~ ~ {Tags:["regional_villager"]}
execute if score @n[type=armor_stand,tag=record] daytime matches 12800..23500 run execute if score @s village_guard_count matches ..30 run summon marker ~ ~ ~ {Tags:["regional_villager"]}
execute unless score @n[type=armor_stand,tag=record] daytime matches 12800..23500 if score @s village_guard_count matches ..20 run summon marker ~ ~ ~ {Tags:["regional_villager"]}
execute unless score @n[type=armor_stand,tag=record] daytime matches 12800..23500 if score @s village_guard_count matches ..20 run summon marker ~ ~ ~ {Tags:["regional_villager"]}
scoreboard players set @s village_guard_count 0

# 村庄守卫将不会生成在玩家附近
spreadplayers ~ ~ 4 96 false @e[type=marker,tag=regional_villager]
execute as @e[type=marker,tag=regional_villager,distance=..192] at @s if entity @p[distance=..4] run kill @s
execute as @e[type=marker,tag=regional_villager,distance=..192] at @s run function main:squad/reinforced_squad/villager_general
execute as @e[type=marker,tag=regional_villager,distance=..192] run kill @s



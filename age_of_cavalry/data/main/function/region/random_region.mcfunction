execute unless score @s last_region_type matches -2147483648..2147483647 run scoreboard players set @s last_region_type 0

execute store result score @s region_random run random value 1..100

execute if entity @n[type=villager,distance=..192] run execute as @e[type=villager,distance=..192] run scoreboard players add @n[tag=record] villager_count 1
execute if entity @n[type=villager,distance=..192] run execute if score @n[tag=record] villager_count matches 6.. run scoreboard players set @s last_region_type 3
scoreboard players set @n[tag=record] villager_count 0

execute if score @s last_region_type matches 0 if score @s region_random matches 1..76 run summon marker ~ ~ ~ {Tags:["region_center","neutral"]}
execute if score @s last_region_type matches 0 if score @s region_random matches 76..90 run summon marker ~ ~ ~ {Tags:["region_center","undead_owned"]}
execute if score @s last_region_type matches 0 if score @s region_random matches 90..100 run summon marker ~ ~ ~ {Tags:["region_center","illager_owned"]}

execute if score @s last_region_type matches 1 if score @s region_random matches 1..70 run summon marker ~ ~ ~ {Tags:["region_center","undead_owned"]}
execute if score @s last_region_type matches 1 if score @s region_random matches 71..95 run summon marker ~ ~ ~ {Tags:["region_center","neutral"]}
execute if score @s last_region_type matches 1 if score @s region_random matches 95..100 run summon marker ~ ~ ~ {Tags:["region_center","illager_owned"]}

execute if score @s last_region_type matches 2 if score @s region_random matches 1..65 run summon marker ~ ~ ~ {Tags:["region_center","illager_owned"]}
execute if score @s last_region_type matches 2 if score @s region_random matches 66..85 run summon marker ~ ~ ~ {Tags:["region_center","neutral"]}
execute if score @s last_region_type matches 2 if score @s region_random matches 86..100 run summon marker ~ ~ ~ {Tags:["region_center","undead_owned"]}

execute if score @s last_region_type matches 3 run summon marker ~ ~ ~ {Tags:["region_center","villager_owned"]}
execute if score @s last_region_type matches 3 run scoreboard players set @s last_region_type 0

execute at @s if entity @n[type=marker,tag=region_center,tag=neutral,distance=..192] run scoreboard players set @s last_region_type 0
execute at @s if entity @n[type=marker,tag=region_center,tag=undead_owned,distance=..192] run scoreboard players set @s last_region_type 1
execute at @s if entity @n[type=marker,tag=region_center,tag=illager_owned,distance=..192] run scoreboard players set @s last_region_type 2

execute at @s if entity @n[type=marker,tag=region_center,tag=neutral,distance=..192] run title @s actionbar {"text":"发现新区域：中立","color":"green"}
execute at @s if entity @n[type=marker,tag=region_center,tag=neutral,distance=..192] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1
execute at @s if entity @n[type=marker,tag=region_center,tag=undead_owned,distance=..192] run title @s actionbar {"text":"发现新区域：被亡灵占领","color":"green"}
execute at @s if entity @n[type=marker,tag=region_center,tag=undead_owned,distance=..192] run playsound minecraft:entity.zombie.ambient master @s ~ ~ ~ 0.5 1
execute at @s if entity @n[type=marker,tag=region_center,tag=illager_owned,distance=..192] run title @s actionbar {"text":"发现新区域：被灾厄村民占领","color":"green"}
execute at @s if entity @n[type=marker,tag=region_center,tag=illager_owned,distance=..192] run playsound minecraft:entity.pillager.ambient master @s ~ ~ ~ 0.5 1
execute at @s if entity @n[type=marker,tag=region_center,tag=villager_owned,distance=..192] run title @s actionbar {"text":"发现新区域：被村民占领","color":"green"}
execute at @s if entity @n[type=marker,tag=region_center,tag=villager_owned,distance=..192] run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 0.5 1
# 发现新区域奖励经验1级
execute at @s if entity @n[type=marker,tag=region_center,distance=..192] run experience add @s 1 levels

execute if entity @e[type=armor_stand,tag=record] run execute as @e[type=armor_stand,tag=record] at @s run function main:instant_detection/period_detect
execute if entity @e[type=armor_stand,tag=record] run execute as @e[type=armor_stand,tag=record] at @s run function main:instant_detection/team_join
execute if entity @e[type=armor_stand,tag=record] run execute as @e[type=armor_stand,tag=record] at @s run function main:instant_detection/animals_break_leaves
execute if entity @e[type=armor_stand,tag=record] run execute as @e[type=armor_stand,tag=record] at @s run function main:instant_detection/village_upgrade
execute if entity @e[type=armor_stand,tag=record] run execute as @e[type=armor_stand,tag=record] at @s run function main:instant_detection/lightsource_detect
execute if entity @e[type=armor_stand,tag=record] run execute if entity @e[type=happy_ghast] as @e[type=armor_stand,tag=record] at @s run function main:instant_detection/happy_ghast
#execute as @e[type=ender_pearl] at @s run data modify entity @s Owner[0] set from entity @n[type=!item,type=!ender_pearl,type=!armor_stand] UUID[0]
#execute as @e[type=ender_pearl] at @s run data modify entity @s Owner[1] set from entity @n[type=!item,type=!ender_pearl,type=!armor_stand] UUID[1]
#execute as @e[type=ender_pearl] at @s run data modify entity @s Owner[2] set from entity @n[type=!item,type=!ender_pearl,type=!armor_stand] UUID[2]
#execute as @e[type=ender_pearl] at @s run data modify entity @s Owner[3] set from entity @n[type=!item,type=!ender_pearl,type=!armor_stand] UUID[3]



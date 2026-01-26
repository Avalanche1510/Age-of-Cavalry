execute as @e[type=armor_stand,tag=record] if score @s difficulty matches 1.. run scoreboard players remove @s difficulty 1
execute as @e[type=armor_stand,tag=record] run function main:difficulty/get
execute as @e[type=armor_stand,tag=record] if score @s difficulty matches 0 run say 特殊怪物的难度已达最低级别，无法继续提升！
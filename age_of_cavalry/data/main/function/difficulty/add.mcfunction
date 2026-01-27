execute as @e[type=armor_stand,tag=record] if score @s difficulty matches ..5 run scoreboard players add @s difficulty 1
execute as @e[type=armor_stand,tag=record] run function main:difficulty/get
execute as @e[type=armor_stand,tag=record] if score @s difficulty matches 6 run say 特殊怪物的难度已达最高级别，无法继续提升！
# 初始化
execute as @n[tag=summoning,distance=..1] at @s run summon armor_stand ~ ~ ~ {Tags:["col"],Invulnerable:1b,NoGravity:1b}
execute as @n[type=armor_stand,tag=col,tag=!initialized] store result score @s row run scoreboard players get @n[tag=summoning,distance=..1] row
execute as @n[type=armor_stand,tag=col,tag=!initialized] store result score @s col run scoreboard players get @n[tag=summoning,distance=..1] col
execute as @n[type=armor_stand,tag=col,tag=!initialized] store result score @s SoldierType run scoreboard players get @n[tag=summoning,distance=..1] SoldierType
execute as @n[tag=summoning,distance=..1] run tag @s remove summoning
execute as @n[type=armor_stand,tag=col,tag=!initialized] run scoreboard players set @s c_col 0
execute as @n[type=armor_stand,tag=col,tag=!initialized] run tag @s add initialized

# 执行
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s if score @s c_col < @s col run tp ~ ~ ~1
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s if score @s c_col < @s col run say col
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s if score @s c_col < @s col run function main:army/formation/dense_line
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s if score @s c_col < @s col run scoreboard players add @s c_col 1

# 当前行列未满则递归执行
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s unless score @s c_col = @s col run function main:army/formation/dense_square
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s if score @s c_col = @s col run function main:instant_detection/team_join
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s if score @s c_col = @s col run execute as @e[distance=..64,tag=soldier,tag=!has_loot] run function main:gifted_mobs/assign_loot
execute as @n[type=armor_stand,tag=col,tag=initialized] at @s if score @s c_col = @s col run kill @s 



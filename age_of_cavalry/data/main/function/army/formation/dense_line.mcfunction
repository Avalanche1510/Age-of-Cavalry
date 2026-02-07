# 初始化
execute as @n[type=armor_stand,tag=col,distance=..0.3] at @s run summon armor_stand ~ ~ ~ {Tags:["row"],Invulnerable:1b,NoGravity:1b}
execute as @n[type=armor_stand,tag=row,tag=!initialized] store result score @s row run scoreboard players get @n[type=armor_stand,tag=col,distance=..0.3] row
execute as @n[type=armor_stand,tag=row,tag=!initialized] store result score @s SoldierType run scoreboard players get @n[type=armor_stand,tag=col,distance=..0.3] SoldierType
execute as @n[type=armor_stand,tag=row,tag=!initialized] run scoreboard players set @s c_row 0
execute as @n[type=armor_stand,tag=row,tag=!initialized] run tag @s add initialized

# 执行
execute as @n[type=armor_stand,tag=row,tag=initialized] at @s if score @s c_row < @s row run tp ~1 ~ ~
execute as @n[type=armor_stand,tag=row,tag=initialized] at @s if score @s c_row < @s row run say row
execute as @n[type=armor_stand,tag=row,tag=initialized] at @s if score @s c_row < @s row run function main:army/soldiers/select_soldiers
execute as @n[type=armor_stand,tag=row,tag=initialized] at @s if score @s c_row < @s row run scoreboard players add @s c_row 1

# 当前行列未满则递归执行
execute as @n[type=armor_stand,tag=row,tag=initialized] at @s unless score @s c_row = @s row run function main:army/formation/dense_line
execute as @n[type=armor_stand,tag=row,tag=initialized] at @s if score @s c_row = @s row run kill @s 
# 12霰弩手
tag @s add summoning
scoreboard players set @s row 12
scoreboard players set @s col 2
scoreboard players set @s SoldierType 1
execute at @s run function main:army/formation/sparse_square
tp ~12 ~ ~-3
# 4重弩手
tag @s add summoning
scoreboard players set @s row 4
scoreboard players set @s col 1
scoreboard players set @s SoldierType 2
execute at @s run function main:army/formation/sparse_square
tp ~9 ~ ~-6
# 6狂热教士
tag @s add summoning
scoreboard players set @s row 6
scoreboard players set @s col 1
scoreboard players set @s SoldierType 4
execute at @s run function main:army/formation/sparse_square
tp ~15 ~ ~-9
# 2卫道武士
tag @s add summoning
scoreboard players set @s row 2
scoreboard players set @s col 1
scoreboard players set @s SoldierType 3
execute at @s run function main:army/formation/sparse_square


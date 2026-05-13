# 中立地区不变
execute as @e[tag=region_center,tag=villager_owned] at @s run function main:region/count_golem
execute as @e[tag=region_center,tag=illager_owned] at @s run function main:region/count_illager
execute as @e[tag=region_center,tag=undead_owned] at @s run function main:region/count_undead












# 中立地区不变
execute as @e[tag=region_center,tag=villager_owned] at @s if entity @p[distance=..96] run function main:region/count_villager_guard
execute as @e[tag=region_center,tag=illager_owned] at @s if entity @p[distance=..96] unless score @n[tag=record,type=armor_stand] turbulence matches 1000..1199 run function main:region/count_illager
execute as @e[tag=region_center,tag=undead_owned] at @s if entity @p[distance=..96] unless score @n[tag=record,type=armor_stand] turbulence matches 1000..1199 run function main:region/count_undead












# 随机属性
execute if items entity @s weapon.* bow run tag @s add archer
execute if items entity @s weapon.* crossbow run tag @s add archer
execute if items entity @s weapon.* trident run tag @s add archer
execute store result score @s[tag=!archer] skillRandom run random value 1..5
execute if entity @s[tag=normal_mob] run function main:gifted_mobs/attribute_type/normal
execute if entity @s[tag=elite_mob] run function main:gifted_mobs/attribute_type/elite
execute if entity @s[tag=legend_mob] run function main:gifted_mobs/attribute_type/legend

function main:gifted_mobs/assign_loot
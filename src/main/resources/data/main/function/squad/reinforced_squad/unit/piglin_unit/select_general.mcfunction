execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..20 positioned ~ ~3 ~ run function main:squad/reinforced_squad/unit/piglin_unit/blaze
execute as @s if score @s squadNum matches 21..35 positioned ~1 ~ ~ run function main:squad/reinforced_squad/unit/piglin_unit/piglin_sword
execute as @s if score @s squadNum matches 36..50 positioned ~ ~ ~-1 run function main:squad/reinforced_squad/unit/piglin_unit/piglin_spear
execute as @s if score @s squadNum matches 51..60 positioned ~ ~ ~1 run function main:squad/reinforced_squad/unit/piglin_unit/piglin_guard
execute as @s if score @s squadNum matches 61..75 positioned ~-1 ~ ~ run function main:squad/reinforced_squad/unit/piglin_unit/piglin_crossbow
execute as @s if score @s squadNum matches 75..80 positioned ~ ~ ~ run function main:squad/reinforced_squad/unit/piglin_unit/piglin_brute
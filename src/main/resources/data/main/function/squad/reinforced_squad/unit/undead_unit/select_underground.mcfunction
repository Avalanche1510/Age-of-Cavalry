execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..15 positioned ~2 ~ ~ run function main:squad/reinforced_squad/unit/undead_unit/spider
execute as @s if score @s squadNum matches 16..45 positioned ~-2 ~ ~ run function main:squad/reinforced_squad/unit/undead_unit/zombie
execute as @s if score @s squadNum matches 46..65 positioned ~ ~ ~2 run function main:squad/reinforced_squad/unit/undead_unit/skeleton
execute as @s if score @s squadNum matches 66..75 positioned ~ ~ ~-2 run function main:squad/reinforced_squad/unit/undead_unit/cave_spider
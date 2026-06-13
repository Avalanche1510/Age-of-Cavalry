execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..30 positioned ~2 ~ ~2 run function main:squad/reinforced_squad/unit/undead_unit/wither_skeleton
execute as @s if score @s squadNum matches 31..70 positioned ~-2 ~ ~-2 run function main:squad/reinforced_squad/unit/undead_unit/zombified_piglin
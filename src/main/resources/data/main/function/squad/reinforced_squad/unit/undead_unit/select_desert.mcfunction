execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..10 positioned ~-2 ~ ~-2 run function main:squad/reinforced_squad/unit/undead_unit/spider
execute as @s if score @s squadNum matches 11..30 positioned ~2 ~ ~2 run function main:squad/reinforced_squad/unit/undead_unit/husk
execute as @s if score @s squadNum matches 31..40 positioned ~ ~ ~-2 run function main:squad/reinforced_squad/unit/undead_unit/zombie
execute as @s if score @s squadNum matches 41..60 positioned ~ ~ ~2 run function main:squad/reinforced_squad/unit/undead_unit/parched
execute as @s if score @s squadNum matches 61..70 positioned ~-2 ~ ~ run function main:squad/reinforced_squad/unit/undead_unit/skeleton
execute as @s if score @s squadNum matches 71..90 positioned ~2 ~ ~ run function main:knight/undead/camel_husk_knight
execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..15 positioned ~2 ~ ~ run function main:squad/reinforced_squad/unit/undead_unit/spider
execute as @s if score @s squadNum matches 16..45 positioned ~-2 ~ ~ run function main:squad/reinforced_squad/unit/undead_unit/zombie
execute as @s if score @s squadNum matches 46..65 positioned ~ ~ ~2 run function main:squad/reinforced_squad/unit/undead_unit/skeleton
execute as @s if score @s squadNum matches 66..75 positioned ~ ~ ~-2 run function main:squad/reinforced_squad/unit/undead_unit/drowned_axe
execute as @s if score @s squadNum matches 76..80 positioned ~2 ~ ~2 run function main:squad/reinforced_squad/unit/undead_unit/drowned_trident
execute as @s if score @s squadNum matches 81..90 positioned ~-2 ~ ~-2 run function main:knight/undead/zombie_knight
execute as @s if score @s squadNum matches 91..100 positioned ~2 ~ ~-2 run function main:knight/undead/spider_knight
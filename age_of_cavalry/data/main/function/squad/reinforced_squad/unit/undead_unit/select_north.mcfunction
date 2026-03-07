execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..20 positioned 2 ~ ~ run function main:squad/reinforced_squad/unit/undead_unit/zombie
execute as @s if score @s squadNum matches 21..60 positioned ~-2 ~ ~ run function main:squad/reinforced_squad/unit/undead_unit/stray
execute as @s if score @s squadNum matches 61..70 positioned ~ ~ ~2 run function main:squad/reinforced_squad/unit/undead_unit/skeleton
execute as @s if score @s squadNum matches 71..80 positioned ~ ~ ~-2 run function main:knight/undead/north_knight
execute as @s if score @s squadNum matches 81..90 positioned ~2 ~ ~2 run function main:knight/undead/northarcher_knight
execute as @s if score @s squadNum matches 91..100 positioned ~-2 ~ ~-2 run function main:knight/undead/white_knight
execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..20 positioned ~2 ~ ~ run function main:knight/piglin/hoglin_knight
execute as @s if score @s squadNum matches 21..30 positioned ~-2 ~ ~ run function main:knight/piglin/lancer_knight
execute as @s if score @s squadNum matches 31..50 positioned ~ ~ ~2 run function main:knight/piglin/guard_knight
execute as @s if score @s squadNum matches 51..60 positioned ~ ~ ~-2 run function main:knight/piglin/brute_knight
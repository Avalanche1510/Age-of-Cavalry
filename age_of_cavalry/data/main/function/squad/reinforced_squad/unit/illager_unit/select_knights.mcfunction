execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..25 positioned ~2 ~ ~ run function main:knight/illager/pillager_knight
execute as @s if score @s squadNum matches 26..40 positioned ~ ~ ~2 run function main:knight/illager/pillager_musket_knight
execute as @s if score @s squadNum matches 41..60 positioned ~-2 ~ ~ run function main:knight/illager/vindicator_knight
execute as @s if score @s squadNum matches 61..70 positioned ~ ~ ~-2 run function main:knight/illager/evoker_knight

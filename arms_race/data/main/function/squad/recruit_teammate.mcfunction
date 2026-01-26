execute as @s at @s if entity @s[tag=elite_mob,tag=captain] store result score @s squadNum run random value 2..6
execute as @s at @s if entity @s[tag=legend_mob,tag=captain] store result score @s squadNum run random value 3..12
execute as @s at @s if entity @s[tag=normal_mob,tag=captain] store result score @s squadNum run random value 1..4

function main:squad/find

summon tnt ~ ~ ~ {fuse:100,Tags:["orbital"],explosion_power:5}
execute as @n[type=tnt,tag=orbital] store result entity @s Rotation[0] float 1 run random value 0..360
execute if score @s core_distance matches 1 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^0.1
execute if score @s core_distance matches 2 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^0.4
execute if score @s core_distance matches 3 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^0.9
execute if score @s core_distance matches 4 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^1.6
execute if score @s core_distance matches 5 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^2.5
execute if score @s core_distance matches 6 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^3.6
execute if score @s core_distance matches 7 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^4.9
execute if score @s core_distance matches 8 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^6.4
execute if score @s core_distance matches 9 as @n[type=tnt,tag=orbital] at @s run tp ^ ^ ^8.1
execute as @n[type=tnt,tag=orbital] run tag @s remove orbital
execute if score @s tnt_num matches 1.. run scoreboard players remove @s tnt_num 1
execute if score @s tnt_num matches 1.. run function main:orbital_cannon/nuke/nuke_ring

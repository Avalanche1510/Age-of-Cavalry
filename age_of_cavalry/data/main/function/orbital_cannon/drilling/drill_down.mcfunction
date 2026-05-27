tp @s ~ ~-0.5 ~
summon tnt ~ ~ ~ {fuse:0,NoGravity:1b}
scoreboard players remove @s tnt_depth 1
execute if score @s tnt_depth matches 1.. as @s at @s run function main:orbital_cannon/drilling/drill_down
execute if score @s tnt_depth matches 0 run kill @s
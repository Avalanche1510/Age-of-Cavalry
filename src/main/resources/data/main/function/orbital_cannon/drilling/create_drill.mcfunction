summon marker ~ ~192 ~ {Tags:["drill_core"],Invulnerable:1b}
execute as @n[type=marker,tag=drill_core] run scoreboard players set @s tnt_depth 640
execute as @n[type=marker,tag=drill_core] at @s run function main:orbital_cannon/drilling/drill_down
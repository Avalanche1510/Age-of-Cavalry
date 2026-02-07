# CD初始化
execute as @e[team=illager_party,tag=!hatred] run tag @s add hatred
execute as @e[team=undead-arthropod_party,tag=!hatred] run tag @s add hatred
execute as @e[team=piglin_party,tag=!hatred] run tag @s add hatred
execute as @e[team=villager_party,type=!villager,tag=!hatred] run tag @s add hatred

execute as @e[tag=hatred] unless score @s TrackCD matches -2147483648..2147483647 store result score @s TrackCD run random value 1..3

# CD执行
execute as @e[tag=hatred] if score @s TrackCD matches 1.. run scoreboard players remove @s TrackCD 1
execute as @e[tag=hatred,tag=!captain] if score @s TrackCD matches 0 run function main:period_detection/team_clash_near
execute as @e[tag=hatred,tag=captain] if score @s TrackCD matches 0 run function main:period_detection/team_clash_random
execute as @e[tag=hatred] if score @s TrackCD matches 0 if score @s track matches 1 store result score @s TrackCD run random value 9..14
execute as @e[tag=hatred] if score @s TrackCD matches 0 if score @s track matches 0 store result score @s TrackCD run random value 4..8


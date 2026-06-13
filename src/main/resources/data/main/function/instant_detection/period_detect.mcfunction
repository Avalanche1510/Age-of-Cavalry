# 20tick 计时检测
scoreboard players add @s period 1
execute if score @s period matches 1 run function main:period_detection/items_refinement
execute if score @s period matches 1 run function main:period_detection/disguise
execute if score @s period matches 2 run function main:period_detection/cost

execute if score @s period matches 5 run function main:period_detection/check_gifted
execute if score @s period matches 6 run function main:period_detection/identify_region
execute if score @s period matches 7 run function main:period_detection/levelup
execute if score @s period matches 9 run function main:period_detection/compass
execute if score @s period matches 10 run function main:period_detection/tension
execute if score @s period matches 11 run function main:period_detection/cavalry_check
execute if score @s period matches 12 run function main:period_detection/cost
execute if score @s period matches 13 run function main:period_detection/entity_spawning_feature
execute if score @s period matches 14 run function main:period_detection/hurt_reputation
execute if score @s period matches 15 run function main:period_detection/clear_arrows
execute if score @s period matches 16 run function main:period_detection/halt
execute if score @s period matches 17 run function main:period_detection/team_clash
execute if score @s period matches 18 run function main:period_detection/turbulence_stages
execute if score @s period matches 19 run function main:period_detection/near_death_experience
execute if score @s period matches 20.. run scoreboard players set @s period 0
# 320tick 计时检测
scoreboard players add @s longPeriod 1
execute if score @s longPeriod matches 1 run function main:period_detection/better_witch
execute if score @s longPeriod matches 2 run function main:period_detection/animals_effect
execute if score @s longPeriod matches 80 run function main:period_detection/create_region
execute if score @s longPeriod matches 160 run function main:period_detection/turbulence_changes
execute if score @s longPeriod matches 240 run function main:period_detection/create_region
execute if score @s longPeriod matches 320.. run scoreboard players set @s longPeriod 0
# 1 min 计时检测
scoreboard players add @s MinPeriod 1
execute if score @s MinPeriod matches 1 run execute as @e[tag=captain] run function main:squad/recruit_teammate
execute if score @s MinPeriod matches 151 run function main:period_detection/refresh_exposed
execute if score @s MinPeriod matches 601 run execute as @e[tag=captain] run function main:squad/recruit_teammate
execute if score @s MinPeriod matches 901 run function main:period_detection/recover_reputation
execute if score @s MinPeriod matches 1200.. run scoreboard players set @s MinPeriod 0
# 3 min 计时检测
scoreboard players add @s 3MinPeriod 1
execute if score @s 3MinPeriod matches 1 run function main:period_detection/mob_spawn
execute if score @s 3MinPeriod matches 3001 run function main:period_detection/periodic_turbulence
execute if score @s 3MinPeriod matches 3600.. run scoreboard players set @s 3MinPeriod 0

# 随机延时检测初始化
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter,type=!spider,type=!cave_spider,type=!phantom] run tag @s add canRide
execute as @e[team=illager_party,tag=!cavalry,type=!vex,type=!ravager] run tag @s add canRide
execute as @e[team=piglin_party,tag=!cavalry,type=!hoglin,tag=!collecter] run tag @s add canRide
execute as @e[type=!player,tag=canRide] unless score @s RidePeriod matches -1.. store result score @s RidePeriod run random value 1..200

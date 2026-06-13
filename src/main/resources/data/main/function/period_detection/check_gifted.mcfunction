execute as @e[type=!player,team=illager_party,type=!vex,type=!ravager] unless entity @s[tag=armor] run tag @s add armor
execute as @e[type=!player,team=undead-arthropod_party,type=!phantom,type=!zoglin,type=!skeleton_horse,type=!zombie_horse,type=!camel_husk,type=!zombie_nautilus,type=!spider,type=!cave_spider] unless entity @s[tag=armor] run tag @s add armor
execute as @e[type=!player,team=piglin_party,type=!magma_cube,type=!hoglin,type=!blaze] unless entity @s[tag=armor] run tag @s add armor
execute as @e[team=villager_party,type=guardvillagers:guard] unless entity @s[tag=armor] run tag @s add armor

execute as @e[type=creeper] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[type=enderman] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[type=ghast] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[type=breeze] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level

execute as @e[tag=!soldier,type=!player,team=illager_party,type=!vex,tag=!gifted] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[tag=!soldier,type=!player,team=villager_party,type=!villager,type=!wandering_trader,tag=!gifted] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[tag=!soldier,type=!player,team=undead-arthropod_party,tag=!gifted] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[tag=!soldier,type=!player,team=piglin_party,tag=!gifted] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level

execute as @e[tag=normal_mob,tag=gifted] at @s if entity @a[distance=..32] run particle minecraft:flame ~ ~0.5 ~ 0.5 1.0 0.5 0 5 force
execute as @e[tag=elite_mob,tag=gifted] at @s if entity @a[distance=..32] run particle minecraft:witch ~ ~0.5 ~ 0.5 1.1 0.5 0 15 force
execute as @e[tag=legend_mob,tag=gifted] at @s if entity @a[distance=..32] run particle minecraft:soul ~ ~0.5 ~ 0.5 1.2 0.5 0 30 force

execute as @e[tag=!has_max_health,team=undead-arthropod_party] unless score @s maxHealth matches -2147483648..2147483647 store result score @s maxHealth run data get entity @s Health 0.5
execute as @e[tag=!has_max_health,team=undead-arthropod_party] unless score @s maxHealth matches -2147483648..2147483647 run tag @s add has_max_health
execute as @e[tag=!has_max_health,team=illager_party] unless score @s maxHealth matches -2147483648..2147483647 store result score @s maxHealth run data get entity @s Health 0.5
execute as @e[tag=!has_max_health,team=illager_party] unless score @s maxHealth matches -2147483648..2147483647 run tag @s add has_max_health
execute as @e[tag=!has_max_health,team=piglin_party] unless score @s maxHealth matches -2147483648..2147483647 store result score @s maxHealth run data get entity @s Health 0.5
execute as @e[tag=!has_max_health,team=piglin_party] unless score @s maxHealth matches -2147483648..2147483647 run tag @s add has_max_health
execute as @e[tag=!has_max_health,team=villager_party] unless score @s maxHealth matches -2147483648..2147483647 store result score @s maxHealth run data get entity @s Health 0.5
execute as @e[tag=!has_max_health,team=villager_party] unless score @s maxHealth matches -2147483648..2147483647 run tag @s add has_max_health

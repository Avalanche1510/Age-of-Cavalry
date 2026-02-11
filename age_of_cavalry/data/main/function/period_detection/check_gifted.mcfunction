execute as @e[type=!player,team=illager_party,type=!vex,type=!ravager] unless entity @s[tag=armor] run tag @s add armor
execute as @e[type=!player,team=undead-arthropod_party,type=!phantom,type=!zoglin,type=!skeleton_horse,type=!zombie_horse,type=!camel_husk,type=!zombie_nautilus,type=!spider,type=!cave_spider] unless entity @s[tag=armor] run tag @s add armor
execute as @e[type=!player,team=piglin_party,type=!magma_cube,type=!hoglin,type=!blaze] unless entity @s[tag=armor] run tag @s add armor

execute as @e[type=creeper] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[type=enderman] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[type=ghast] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[type=breeze] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level

execute as @e[tag=!soldier,type=!player,team=illager_party,type=!vex] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[tag=!soldier,type=!player,team=villager_party,type=!villager,type=!wandering_trader] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[tag=!soldier,type=!player,team=undead-arthropod_party] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level
execute as @e[tag=!soldier,type=!player,team=piglin_party] at @s unless score @s isGifted matches -1..1 run function main:gifted_mobs/gifted_level

execute as @e[tag=normal_mob,scores={isGifted=-1}] at @s if entity @a[distance=..32] run particle minecraft:flame ~ ~0.5 ~ 0.5 1.0 0.5 0 5 force
execute as @e[tag=elite_mob,scores={isGifted=-1}] at @s if entity @a[distance=..32] run particle minecraft:witch ~ ~0.5 ~ 0.5 1.1 0.5 0 15 force
execute as @e[tag=legend_mob,scores={isGifted=-1}] at @s if entity @a[distance=..32] run particle minecraft:soul ~ ~0.5 ~ 0.5 1.2 0.5 0 30 force
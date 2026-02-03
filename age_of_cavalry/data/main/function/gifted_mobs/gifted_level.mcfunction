execute unless score @s isGifted matches -1..1 run execute store result score @s isGifted run random value 101..200
execute if score @n[type=armor_stand,tag=record] difficulty matches 1 run execute if score @s isGifted matches 101..112 run scoreboard players set @s isGifted 1
execute if score @n[type=armor_stand,tag=record] difficulty matches 2 run execute if score @s isGifted matches 101..124 run scoreboard players set @s isGifted 1
execute if score @n[type=armor_stand,tag=record] difficulty matches 3 run execute if score @s isGifted matches 101..136 run scoreboard players set @s isGifted 1
execute if score @n[type=armor_stand,tag=record] difficulty matches 4 run execute if score @s isGifted matches 101..148 run scoreboard players set @s isGifted 1
execute if score @n[type=armor_stand,tag=record] difficulty matches 5 run execute if score @s isGifted matches 101..160 run scoreboard players set @s isGifted 1
execute if score @n[type=armor_stand,tag=record] difficulty matches 6 run execute if score @s isGifted matches 101..200 run scoreboard players set @s isGifted 1
execute unless score @s isGifted matches -1..1 run scoreboard players set @s isGifted 0
execute if score @s isGifted matches 1 if entity @s[tag=!diy_attributes] store result score @s skillRandom run random value 1..100
execute if score @s isGifted matches 1 run execute if score @s skillRandom matches 1..70 run tag @s add normal_mob
execute if score @s isGifted matches 1 run execute if score @s skillRandom matches 71..95 run tag @s add elite_mob
execute if score @s isGifted matches 1 run execute if score @s skillRandom matches 96..100 run tag @s add legend_mob

execute if score @s isGifted matches 1 run function main:gifted_mobs/random_attribute
execute if score @s[team=piglin_party,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_weapons/assign_weapon_nether
execute if score @s[team=undead-arthropod_party,tag=armor,type=!zombified_piglin,type=!wither_skeleton,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_weapons/assign_weapon_undead
execute if score @s[type=wither_skeleton,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_weapons/assign_weapon_nether
execute if score @s[type=zombified_piglin,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_weapons/assign_weapon_nether
execute if score @s[team=illager_party,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_weapons/assign_weapon_illager

execute if score @s[team=undead-arthropod_party,tag=armor,type=!zombified_piglin,type=!wither_skeleton,type=!spider,type=!cave_spider,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_suits/assign_armor_undead
execute if score @s[type=zombified_piglin,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_suits/assign_armor_nether
execute if score @s[type=wither_skeleton,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_suits/assign_armor_nether
execute if score @s[team=piglin_party,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_suits/assign_armor_nether
execute if score @s[team=illager_party,tag=armor,tag=!diy_tools] isGifted matches 1 run function main:gifted_mobs/assign_suits/assign_armor_illager
function main:gifted_mobs/assign_suits/assign_horse_armor
execute if entity @s[tag=captain] run function main:squad/flags

execute if score @s isGifted matches 1 run scoreboard players set @s skillRandom 0
execute if score @s isGifted matches 1 run scoreboard players set @s skillCD 0
execute if score @s isGifted matches 1 run data merge entity @s {Health:1000.0f,drop_chances:{feet:0.5f,legs:0.5f,chest:0.5f,head:0.5f,mainhand:0.5f,offhand:0.5f},ArmorDropChances:[0.25f,0.25f,0.25f,0.25f]}
execute if entity @s[tag=armor,tag=!collecter] run data merge entity @s {CanPickUpLoot:true}
execute if entity @s[tag=collecter] run data merge entity @s {CanPickUpLoot:false}
execute if score @s isGifted matches 1 run scoreboard players set @s isGifted -1


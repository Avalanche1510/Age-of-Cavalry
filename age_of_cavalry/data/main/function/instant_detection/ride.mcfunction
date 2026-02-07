scoreboard players remove @e[type=!player,tag=canRide,scores={RidePeriod=1..}] RidePeriod 1
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* #minecraft:spears run ride @s mount @n[distance=..4,type=zombie_horse,tag=!has_rider]
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* #minecraft:spears run ride @s mount @n[distance=..4,type=skeleton_horse,tag=!has_rider]
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* #minecraft:spears run ride @s mount @n[distance=..4,type=camel_husk,tag=!has_rider]

execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* #minecraft:swords run ride @s mount @n[distance=..4,type=zombie_horse,tag=!has_rider]
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* #minecraft:swords run ride @s mount @n[distance=..4,type=skeleton_horse,tag=!has_rider]

execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* bow run ride @s mount @n[distance=..4,type=zombie_horse,tag=!has_rider]
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* bow run ride @s mount @n[distance=..4,type=skeleton_horse,tag=!has_rider]
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* bow run ride @s mount @n[distance=..4,type=camel_husk,tag=!has_rider]

execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* trident run ride @s mount @n[distance=..4,type=skeleton_horse,tag=!has_rider]
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter] if score @s RidePeriod matches 0 at @s if items entity @s weapon.* trident run ride @s mount @n[distance=..4,type=camel_husk,tag=!has_rider]

execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter,type=!spider,type=!cave_spider,type=!phantom] if score @s RidePeriod matches 0 at @s run ride @s mount @n[distance=..4,type=spider,tag=!has_rider]
execute as @e[team=undead-arthropod_party,tag=!cavalry,tag=!collecter,type=!spider,type=!cave_spider,type=!phantom] if score @s RidePeriod matches 0 at @s run ride @s mount @n[distance=..4,type=cave_spider,tag=!has_rider]

execute as @e[team=illager_party,tag=!cavalry,type=!vex,type=!ravager] if score @s RidePeriod matches 0 at @s run ride @s mount @n[distance=..4,type=ravager,tag=!has_rider]

execute as @e[team=piglin_party,tag=!cavalry,type=!hoglin,tag=!collecter] if score @s RidePeriod matches 0 at @s run ride @s mount @n[distance=..4,type=hoglin,tag=!has_rider]
execute as @e[tag=canRide,type=!player] on vehicle run tag @s add has_rider
execute as @e[type=!player,tag=canRide,scores={RidePeriod=0}] store result score @s RidePeriod run random value 1..200
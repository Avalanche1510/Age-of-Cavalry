execute if entity @s[tag=normal_mob] if score @n[tag=record,type=armor_stand] difficulty matches 1 store result score @s itemRandom run random value 1..50
execute if entity @s[tag=normal_mob] if score @n[tag=record,type=armor_stand] difficulty matches 2 store result score @s itemRandom run random value 11..60
execute if entity @s[tag=normal_mob] if score @n[tag=record,type=armor_stand] difficulty matches 3 store result score @s itemRandom run random value 21..70
execute if entity @s[tag=normal_mob] if score @n[tag=record,type=armor_stand] difficulty matches 4 store result score @s itemRandom run random value 31..80
execute if entity @s[tag=normal_mob] if score @n[tag=record,type=armor_stand] difficulty matches 5 store result score @s itemRandom run random value 41..90
execute if entity @s[tag=normal_mob] if score @n[tag=record,type=armor_stand] difficulty matches 6..7 store result score @s itemRandom run random value 51..100

execute if entity @s[tag=elite_mob] if score @n[tag=record,type=armor_stand] difficulty matches 1 store result score @s itemRandom run random value 21..70
execute if entity @s[tag=elite_mob] if score @n[tag=record,type=armor_stand] difficulty matches 2 store result score @s itemRandom run random value 31..80
execute if entity @s[tag=elite_mob] if score @n[tag=record,type=armor_stand] difficulty matches 3 store result score @s itemRandom run random value 41..90
execute if entity @s[tag=elite_mob] if score @n[tag=record,type=armor_stand] difficulty matches 4 store result score @s itemRandom run random value 51..100
execute if entity @s[tag=elite_mob] if score @n[tag=record,type=armor_stand] difficulty matches 5 store result score @s itemRandom run random value 61..110
execute if entity @s[tag=elite_mob] if score @n[tag=record,type=armor_stand] difficulty matches 6..7 store result score @s itemRandom run random value 71..120

execute if entity @s[tag=legend_mob] if score @n[tag=record,type=armor_stand] difficulty matches 1 store result score @s itemRandom run random value 51..100
execute if entity @s[tag=legend_mob] if score @n[tag=record,type=armor_stand] difficulty matches 2 store result score @s itemRandom run random value 61..110
execute if entity @s[tag=legend_mob] if score @n[tag=record,type=armor_stand] difficulty matches 3 store result score @s itemRandom run random value 71..120
execute if entity @s[tag=legend_mob] if score @n[tag=record,type=armor_stand] difficulty matches 4 store result score @s itemRandom run random value 81..130
execute if entity @s[tag=legend_mob] if score @n[tag=record,type=armor_stand] difficulty matches 5 store result score @s itemRandom run random value 91..140
execute if entity @s[tag=legend_mob] if score @n[tag=record,type=armor_stand] difficulty matches 6..7 store result score @s itemRandom run random value 101..150

execute if entity @s[tag=archer] if score @s itemRandom matches 1..20 run item replace entity @s weapon.mainhand with crossbow 1
execute if entity @s[tag=archer] if score @s itemRandom matches 1..20 run item replace entity @s weapon.offhand with torch 1
execute if entity @s[tag=archer] if score @s itemRandom matches 21..40 run item replace entity @s weapon.mainhand with crossbow 1
execute if entity @s[tag=archer] if score @s itemRandom matches 21..40 run item replace entity @s weapon.offhand with bread 16
execute if entity @s[tag=archer] if score @s itemRandom matches 41..60 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:1}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 41..60 run item replace entity @s weapon.offhand with bread 32
execute if entity @s[tag=archer] if score @s itemRandom matches 61..70 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:1,unbreaking:1}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 61..70 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 2
execute if entity @s[tag=archer] if score @s itemRandom matches 71..80 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:1,unbreaking:2,flame:1}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 71..80 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 4
execute if entity @s[tag=archer] if score @s itemRandom matches 81..90 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:1,unbreaking:3,flame:1,quick_charge:1}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 81..90 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 6
execute if entity @s[tag=archer] if score @s itemRandom matches 91..100 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:2,unbreaking:3,flame:1,quick_charge:1}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 91..100 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 6
execute if entity @s[tag=archer] if score @s itemRandom matches 101..110 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:2,unbreaking:3,flame:1,quick_charge:2}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 101..110 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 8
execute if entity @s[tag=archer] if score @s itemRandom matches 111..120 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:2,unbreaking:3,flame:1,quick_charge:2}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 111..120 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 10
execute if entity @s[tag=archer] if score @s itemRandom matches 121..130 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:3,unbreaking:3,flame:1,quick_charge:3}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 121..130 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 12
execute if entity @s[tag=archer] if score @s itemRandom matches 131..140 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:3,unbreaking:3,flame:1,quick_charge:3,punch:1}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 131..140 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 14
execute if entity @s[tag=archer] if score @s itemRandom matches 141..150 run item replace entity @s weapon.mainhand with crossbow[enchantments={power:4,unbreaking:3,flame:1,quick_charge:3,punch:2}] 1
execute if entity @s[tag=archer] if score @s itemRandom matches 141..150 run item replace entity @s weapon.offhand with honey_bottle[potion_contents={potion:"minecraft:strong_healing"},custom_name="急救糖浆",rarity="uncommon",consumable={animation:"drink",consume_seconds:0.8,sound:"item.honey_bottle.drink",has_consume_particles:0b}] 16

execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 1..20 run item replace entity @s weapon.mainhand with stone_axe 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 1..20 run item replace entity @s weapon.offhand with torch 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 21..40 run item replace entity @s weapon.mainhand with copper_axe 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 21..40 run item replace entity @s weapon.offhand with bread 16
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 41..60 run item replace entity @s weapon.mainhand with iron_axe 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 41..60 run item replace entity @s weapon.offhand with bread 32
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 61..80 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:1,breach:1}] 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 61..80 run item replace entity @s weapon.offhand with golden_apple 4
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 81..100 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:3,breach:2,unbreaking:1}] 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 81..100 run item replace entity @s weapon.offhand with golden_apple 8
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 101..120 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:3,breach:3,unbreaking:2}] 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 101..120 run item replace entity @s weapon.offhand with golden_apple 12
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 121..140 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:3,breach:4,unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 121..140 run item replace entity @s weapon.offhand with golden_apple 16
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 141..150 run item replace entity @s weapon.mainhand with diamond_axe[enchantments={sharpness:5,breach:4,unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 141..150 run item replace entity @s weapon.offhand with golden_apple 32

execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 1..20 run item replace entity @s weapon.mainhand with stone_axe 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 1..20 run item replace entity @s weapon.offhand with torch 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 21..40 run item replace entity @s weapon.mainhand with copper_axe 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 21..40 run item replace entity @s weapon.offhand with shield 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 41..60 run item replace entity @s weapon.mainhand with iron_axe 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 41..60 run item replace entity @s weapon.offhand with shield 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 61..80 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:1,breach:1}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 61..80 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:1}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 81..100 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:3,breach:2,unbreaking:1}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 81..100 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:1}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 101..120 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:3,breach:3,unbreaking:2}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 101..120 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:2}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 121..140 run item replace entity @s weapon.mainhand with iron_axe[enchantments={sharpness:3,breach:4,unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 121..140 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 141..150 run item replace entity @s weapon.mainhand with diamond_axe[enchantments={sharpness:5,breach:4,unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 141..150 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:3,mending:1}] 1

execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 1..20 run item replace entity @s weapon.mainhand with stone_sword 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 1..20 run item replace entity @s weapon.offhand with torch 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 21..40 run item replace entity @s weapon.mainhand with copper_sword 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 21..40 run item replace entity @s weapon.offhand with shield 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 41..60 run item replace entity @s weapon.mainhand with iron_sword 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 41..60 run item replace entity @s weapon.offhand with shield 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 61..80 run item replace entity @s weapon.mainhand with iron_sword[enchantments={smite:1,knockback:1}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 61..80 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:1}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 81..100 run item replace entity @s weapon.mainhand with iron_sword[enchantments={smite:1,knockback:1,sharpness:1,unbreaking:1}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 81..100 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:1}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 101..120 run item replace entity @s weapon.mainhand with iron_sword[enchantments={smite:2,knockback:1,sharpness:2,unbreaking:2}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 101..120 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:2}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 121..140 run item replace entity @s weapon.mainhand with iron_sword[enchantments={smite:2,knockback:2,sharpness:2,unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 121..140 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 141..150 run item replace entity @s weapon.mainhand with diamond_sword[enchantments={smite:3,knockback:2,sharpness:3,unbreaking:3}] 1
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 141..150 run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:3,mending:1}] 1







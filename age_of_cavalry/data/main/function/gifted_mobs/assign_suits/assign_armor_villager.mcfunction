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

execute if entity @s[tag=archer] if score @s itemRandom matches 1..30 run item replace entity @s armor.chest with leather_chestplate
execute if entity @s[tag=archer] if score @s itemRandom matches 1..30 run item replace entity @s armor.feet with leather_boots
execute if entity @s[tag=archer] if score @s itemRandom matches 31..45 run item replace entity @s armor.chest with chainmail_chestplate
execute if entity @s[tag=archer] if score @s itemRandom matches 31..45 run item replace entity @s armor.feet with chainmail_boots
execute if entity @s[tag=archer] if score @s itemRandom matches 46..60 run item replace entity @s armor.chest with copper_chestplate
execute if entity @s[tag=archer] if score @s itemRandom matches 46..60 run item replace entity @s armor.feet with copper_boots
execute if entity @s[tag=archer] if score @s itemRandom matches 61..90 run item replace entity @s armor.chest with iron_chestplate
execute if entity @s[tag=archer] if score @s itemRandom matches 61..90 run item replace entity @s armor.feet with iron_boots
execute if entity @s[tag=archer] if score @s itemRandom matches 91..120 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=archer] if score @s itemRandom matches 91..120 run item replace entity @s armor.feet with iron_boots[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=archer] if score @s itemRandom matches 121..135 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=archer] if score @s itemRandom matches 121..135 run item replace entity @s armor.feet with iron_boots[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=archer] if score @s itemRandom matches 136..150 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:5,unbreaking:3,thorns:3}]
execute if entity @s[tag=archer] if score @s itemRandom matches 136..150 run item replace entity @s armor.feet with iron_boots[enchantments={protection:5,unbreaking:3,thorns:3}]


execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 1..30 run item replace entity @s armor.head with leather_helmet
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 1..30 run item replace entity @s armor.chest with leather_chestplate
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 31..45 run item replace entity @s armor.head with chainmail_helmet
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 31..45 run item replace entity @s armor.chest with chainmail_chestplate
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 46..60 run item replace entity @s armor.head with copper_helmet
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 46..60 run item replace entity @s armor.chest with copper_chestplate
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 61..90 run item replace entity @s armor.head with iron_helmet
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 61..90 run item replace entity @s armor.chest with iron_chestplate
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 91..120 run item replace entity @s armor.head with iron_helmet[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 91..120 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 121..135 run item replace entity @s armor.head with iron_helmet[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 121..135 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 136..150 run item replace entity @s armor.head with iron_helmet[enchantments={protection:5,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=berserker] if score @s itemRandom matches 136..150 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:5,unbreaking:3,thorns:3}]

execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.head with leather_helmet
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.chest with leather_chestplate
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.legs with leather_leggings
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.feet with leather_boots
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.head with chainmail_helmet
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.chest with chainmail_chestplate
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.legs with chainmail_leggings
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.feet with chainmail_boots
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.head with copper_helmet
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.chest with copper_chestplate
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.legs with copper_leggings
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.feet with copper_boots
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.head with iron_helmet
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.chest with iron_chestplate
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.legs with iron_leggings
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.feet with iron_boots
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.head with iron_helmet[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.feet with iron_boots[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.head with iron_helmet[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.feet with iron_boots[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.head with iron_helmet[enchantments={protection:5,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:5,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:5,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.feet with iron_boots[enchantments={protection:5,unbreaking:3,thorns:3}]


execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.head with chainmail_helmet
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.chest with leather_chestplate
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.legs with leather_leggings
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 1..30 run item replace entity @s armor.feet with leather_boots
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.head with chainmail_helmet
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.chest with chainmail_chestplate
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.legs with chainmail_leggings
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 31..45 run item replace entity @s armor.feet with chainmail_boots
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.head with chainmail_helmet
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.chest with iron_chestplate
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.legs with iron_leggings
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 46..60 run item replace entity @s armor.feet with iron_boots
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.head with chainmail_helmet[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 61..90 run item replace entity @s armor.feet with iron_boots[enchantments={protection:2,unbreaking:1,thorns:1}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.head with chainmail_helmet[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 91..120 run item replace entity @s armor.feet with iron_boots[enchantments={protection:3,unbreaking:2,thorns:2}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.head with chainmail_helmet[enchantments={protection:4,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:4,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:4,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 121..135 run item replace entity @s armor.feet with iron_boots[enchantments={protection:4,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.head with diamond_helmet[enchantments={protection:5,unbreaking:3,thorns:3,mending:1}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:5,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:5,unbreaking:3,thorns:3}]
execute if entity @s[tag=!archer,tag=!berserker,tag=!tank] if score @s itemRandom matches 136..150 run item replace entity @s armor.feet with iron_boots[enchantments={protection:5,unbreaking:3,thorns:3}]

execute if entity @s[tag=miner] run item replace entity @s armor.head with iron_helmet
execute if entity @s[tag=miner] run item replace entity @s armor.chest with air
execute if entity @s[tag=miner] run item replace entity @s armor.legs with air
execute if entity @s[tag=miner] run item replace entity @s armor.feet with air

execute if entity @s[tag=lumberjack] run item replace entity @s armor.head with iron_helmet
execute if entity @s[tag=lumberjack] run item replace entity @s armor.chest with air
execute if entity @s[tag=lumberjack] run item replace entity @s armor.legs with air
execute if entity @s[tag=lumberjack] run item replace entity @s armor.feet with air

execute if entity @s[tag=farmer] run item replace entity @s armor.head with iron_helmet
execute if entity @s[tag=farmer] run item replace entity @s armor.chest with air
execute if entity @s[tag=farmer] run item replace entity @s armor.legs with air
execute if entity @s[tag=farmer] run item replace entity @s armor.feet with air
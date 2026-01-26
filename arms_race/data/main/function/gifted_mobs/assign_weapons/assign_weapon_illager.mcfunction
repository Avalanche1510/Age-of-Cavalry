execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 1 store result score @s itemRandom run random value 1..50
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 2 store result score @s itemRandom run random value 1..60
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 3 store result score @s itemRandom run random value 1..70
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 4 store result score @s itemRandom run random value 1..80
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 5 store result score @s itemRandom run random value 1..90
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 6 store result score @s itemRandom run random value 1..100

execute if entity @s[tag=elite_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 1 store result score @s itemRandom run random value 41..80
execute if entity @s[tag=elite_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 2 store result score @s itemRandom run random value 41..90
execute if entity @s[tag=elite_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 3 store result score @s itemRandom run random value 41..100
execute if entity @s[tag=elite_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 4 store result score @s itemRandom run random value 41..110
execute if entity @s[tag=elite_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 5 store result score @s itemRandom run random value 41..120
execute if entity @s[tag=elite_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 6 store result score @s itemRandom run random value 41..130

execute if entity @s[tag=legend_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 1 store result score @s itemRandom run random value 81..100
execute if entity @s[tag=legend_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 2 store result score @s itemRandom run random value 81..120
execute if entity @s[tag=legend_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 3 store result score @s itemRandom run random value 81..140
execute if entity @s[tag=legend_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 4 store result score @s itemRandom run random value 81..160
execute if entity @s[tag=legend_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 5 store result score @s itemRandom run random value 81..180
execute if entity @s[tag=legend_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 6 store result score @s itemRandom run random value 81..200


execute if entity @s[type=pillager] run tag @s add f1w
execute if entity @s[type=vindicator] run tag @s add c2w
execute if entity @s[type=evoker] run tag @s add totem


execute if entity @s[tag=f1w] if score @s itemRandom matches 1..20 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 21..40 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":2,"minecraft:power":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 41..60 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":2,"minecraft:power":1,"minecraft:multishot":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 61..80 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":2,"minecraft:power":1,"minecraft:multishot":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 81..100 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":2,"minecraft:power":2,"minecraft:multishot":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 101..120 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":2,"minecraft:power":2,"minecraft:multishot":1,"minecraft:piercing":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 121..140 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":3,"minecraft:power":2,"minecraft:multishot":1,"minecraft:piercing":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 141..160 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":3,"minecraft:power":2,"minecraft:multishot":1,"minecraft:piercing":1,"minecraft:flame":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 161..180 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":3,"minecraft:power":3,"minecraft:multishot":1,"minecraft:piercing":2,"minecraft:flame":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=f1w] if score @s itemRandom matches 181..200 run data merge entity @s {equipment:{mainhand:{id:"minecraft:crossbow",count:1b,components:{"minecraft:enchantments":{"minecraft:quick_charge":4,"minecraft:power":3,"minecraft:multishot":2,"minecraft:piercing":3,"minecraft:flame":1,"minecraft:unbreaking":3}}}}}

execute if entity @s[tag=totem] if score @s itemRandom matches 1..100 run data merge entity @s {equipment:{mainhand:{id:"minecraft:totem_of_undying",count:1b}}}
execute if entity @s[tag=totem] if score @s itemRandom matches 101..200 run data merge entity @s {equipment:{mainhand:{id:"minecraft:totem_of_undying",count:1b}}}
execute if entity @s[tag=totem] if score @s itemRandom matches 101..200 run data merge entity @s {equipment:{offhand:{id:"minecraft:totem_of_undying",count:1b}}}


execute if entity @s[tag=c2w] if score @s itemRandom matches 1..10 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 11..20 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 21..30 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 31..40 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 41..50 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":2,"minecraft:smite":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 51..60 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:looting":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 61..70 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":2,"minecraft:smite":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 71..80 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:looting":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 81..90 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":3,"minecraft:smite":2,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 91..100 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:looting":2,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 101..110 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":3,"minecraft:smite":2,"minecraft:fire_aspect":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 111..120 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":4,"minecraft:looting":2,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 121..130 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":3,"minecraft:smite":3,"minecraft:fire_aspect":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 131..140 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":5,"minecraft:looting":2,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 141..150 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":4,"minecraft:smite":3,"minecraft:fire_aspect":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 151..160 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":5,"minecraft:looting":3,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 161..170 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":4,"minecraft:smite":4,"minecraft:fire_aspect":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 171..180 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":6,"minecraft:looting":3,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 181..190 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:knockback":5,"minecraft:smite":5,"minecraft:fire_aspect":2,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c2w] if score @s itemRandom matches 191..200 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":7,"minecraft:looting":4,"minecraft:unbreaking":3}}}}}



execute if entity @s[tag=miner] run data merge entity @s {equipment:{offhand:{id:torch,count:1b},mainhand:{id:"minecraft:iron_pickaxe",count:1b,components:{"minecraft:enchantments":{"minecraft:efficiency":2,"minecraft:unbreaking":1,"minecraft:fortune":1}}}}}
execute if entity @s[tag=lumberjack] run data merge entity @s {equipment:{offhand:{id:dark_oak_log,count:1b},mainhand:{id:"minecraft:iron_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:efficiency":3,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=farmer] run data merge entity @s {equipment:{offhand:{id:pumpkin_pie,count:1b},mainhand:{id:"minecraft:iron_hoe",count:1b,components:{"minecraft:enchantments":{"minecraft:efficiency":2,"minecraft:unbreaking":1,"minecraft:mending":1}}}}}
execute if entity @s[tag=miner] run data merge entity @s {DeathLootTable:"mobs:entities/miner/overworld"}
execute if entity @s[tag=lumberjack] run data merge entity @s {DeathLootTable:"mobs:entities/lumberjack/overworld"}
execute if entity @s[tag=farmer] run data merge entity @s {DeathLootTable:"mobs:entities/farmer/overworld"}
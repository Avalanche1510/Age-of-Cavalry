execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 1 store result score @s itemRandom run random value -50..50
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 2 store result score @s itemRandom run random value -50..60
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 3 store result score @s itemRandom run random value -50..70
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 4 store result score @s itemRandom run random value -50..80
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 5 store result score @s itemRandom run random value -50..90
execute if entity @s[tag=normal_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 6 store result score @s itemRandom run random value -50..100

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
execute if entity @s[tag=legend_mob] run execute if score @n[tag=record,type=armor_stand] difficulty matches 6 store result score @s itemRandom run random value 81..206

# c3w = close, 3 weapon {sword,axe,spear}
# f2w = far, 2 weapon {bow,sword}
# s2w = special, 2 weapon {trident,axe}
execute if entity @s[type=zombie] run tag @s add c3w
execute if entity @s[type=zombie_villager] run tag @s add c3w
execute if entity @s[type=husk] run tag @s add c3w
execute if entity @s[type=skeleton] run tag @s add f2w
execute if entity @s[type=bogged] run tag @s add f2w
execute if entity @s[type=stray] run tag @s add f2w
execute if entity @s[type=parched] run tag @s add f2w
execute if entity @s[type=drowned] run tag @s add s2w

execute if entity @s[tag=c3w] if score @s itemRandom matches 1..12 run data merge entity @s {equipment:{mainhand:{id:"minecraft:wooden_sword",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 13..18 run data merge entity @s {equipment:{mainhand:{id:"minecraft:wooden_axe",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 19..20 run data merge entity @s {equipment:{mainhand:{id:"minecraft:wooden_spear",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 21..32 run data merge entity @s {equipment:{mainhand:{id:"minecraft:golden_sword",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 33..38 run data merge entity @s {equipment:{mainhand:{id:"minecraft:golden_axe",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 39..40 run data merge entity @s {equipment:{mainhand:{id:"minecraft:golden_spear",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 41..52 run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_sword",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 53..58 run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_axe",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 59..60 run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_spear",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 61..72 run data merge entity @s {equipment:{mainhand:{id:"minecraft:copper_sword",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 73..78 run data merge entity @s {equipment:{mainhand:{id:"minecraft:copper_axe",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 79..80 run data merge entity @s {equipment:{mainhand:{id:"minecraft:copper_spear",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 81..92 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_sword",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 93..98 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_axe",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 99..100 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_spear",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 101..112 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 113..118 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 119..120 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 121..132 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 133..138 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 139..140 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 141..152 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 153..158 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 159..160 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:knockback":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 161..172 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 173..178 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 179..180 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:knockback":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 181..192 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":4,"minecraft:knockback":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 193..198 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":5,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 199..200 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:knockback":2,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 201..203 run data merge entity @s {equipment:{mainhand:{id:"minecraft:netherite_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":4,"minecraft:knockback":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 204..205 run data merge entity @s {equipment:{mainhand:{id:"minecraft:netherite_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":5,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=c3w] if score @s itemRandom matches 206 run data merge entity @s {equipment:{mainhand:{id:"minecraft:netherite_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:knockback":2,"minecraft:unbreaking":3}}}}}


execute if entity @s[tag=f2w] if score @s itemRandom matches 1..15 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":1}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 16..20 run data merge entity @s {equipment:{mainhand:{id:"minecraft:wooden_sword",count:1b}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 21..35 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 36..40 run data merge entity @s {equipment:{mainhand:{id:"minecraft:golden_sword",count:1b}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 41..55 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":2,"minecraft:punch":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 56..60 run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_sword",count:1b}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 61..75 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":3,"minecraft:punch":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 76..80 run data merge entity @s {equipment:{mainhand:{id:"minecraft:copper_sword",count:1b}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 81..95 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":3,"minecraft:punch":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 96..100 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_sword",count:1b}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 101..115 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":4,"minecraft:punch":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 116..120 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 121..135 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":4,"minecraft:punch":1,"minecraft:flame":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 136..140 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 141..155 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":4,"minecraft:punch":2,"minecraft:flame":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 156..160 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 161..175 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":5,"minecraft:punch":2,"minecraft:flame":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 176..180 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 181..195 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":5,"minecraft:punch":2,"minecraft:flame":1,"minecraft:piercing":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 196..200 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_sword",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":4,"minecraft:knockback":1,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 201..204 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":6,"minecraft:punch":2,"minecraft:flame":1,"minecraft:piercing":2,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=f2w] if score @s itemRandom matches 205..206 run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1b,components:{"minecraft:enchantments":{"minecraft:power":7,"minecraft:punch":3,"minecraft:flame":1,"minecraft:piercing":3,"minecraft:unbreaking":3}}}}}




execute if entity @s[tag=s2w] if score @s itemRandom matches 1..10 run data merge entity @s {equipment:{mainhand:{id:"minecraft:wooden_axe",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 11..20 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 21..30 run data merge entity @s {equipment:{mainhand:{id:"minecraft:golden_axe",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 31..40 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 41..50 run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_axe",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 51..60 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 61..70 run data merge entity @s {equipment:{mainhand:{id:"minecraft:copper_axe",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 71..80 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 81..90 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_axe",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 91..100 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 101..110 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 111..120 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 121..130 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:loyalty":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 131..140 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b,components:{"minecraft:enchantments":{"minecraft:impaling":1,"minecraft:loyalty":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 141..150 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:loyalty":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 151..160 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b,components:{"minecraft:enchantments":{"minecraft:impaling":1,"minecraft:loyalty":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 161..170 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 171..180 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b,components:{"minecraft:enchantments":{"minecraft:impaling":2,"minecraft:loyalty":2,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 181..190 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":5,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 191..200 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b,components:{"minecraft:enchantments":{"minecraft:impaling":3,"minecraft:loyalty":3,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 201..203 run data merge entity @s {equipment:{mainhand:{id:"minecraft:netherite_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":5,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=s2w] if score @s itemRandom matches 204..206 run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident",count:1b,components:{"minecraft:enchantments":{"minecraft:impaling":5,"minecraft:loyalty":3,"minecraft:channeling":1,"minecraft:unbreaking":3}}}}}


execute if entity @s[tag=spear] if score @s itemRandom matches -50..20 run data merge entity @s {equipment:{mainhand:{id:"minecraft:wooden_spear",count:1b}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 21..40 run data merge entity @s {equipment:{mainhand:{id:"minecraft:golden_spear",count:1b}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 41..60 run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_spear",count:1b}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 61..80 run data merge entity @s {equipment:{mainhand:{id:"minecraft:copper_spear",count:1b}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 81..100 run data merge entity @s {equipment:{mainhand:{id:"minecraft:iron_spear",count:1b}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 101..120 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 121..140 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 141..160 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":1,"minecraft:knockback":1,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 161..180 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":2,"minecraft:knockback":1,"minecraft:unbreaking":2}}}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 181..200 run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:knockback":2,"minecraft:unbreaking":3}}}}}
execute if entity @s[tag=spear] if score @s itemRandom matches 201..206 run data merge entity @s {equipment:{mainhand:{id:"minecraft:netherite_spear",count:1b,components:{"minecraft:enchantments":{"minecraft:sharpness":3,"minecraft:knockback":2,"minecraft:unbreaking":3}}}}}



execute if entity @s[tag=miner] run data merge entity @s {equipment:{offhand:{id:copper_torch,count:1b},mainhand:{id:"minecraft:iron_pickaxe",count:1b,components:{"minecraft:enchantments":{"minecraft:efficiency":2,"minecraft:unbreaking":1,"minecraft:fortune":1}}}}}
execute if entity @s[tag=lumberjack] run data merge entity @s {equipment:{offhand:{id:oak_log,count:1b},mainhand:{id:"minecraft:iron_axe",count:1b,components:{"minecraft:enchantments":{"minecraft:efficiency":3,"minecraft:unbreaking":1}}}}}
execute if entity @s[tag=farmer] run data merge entity @s {equipment:{offhand:{id:poisonous_potato,count:1b},mainhand:{id:"minecraft:iron_hoe",count:1b,components:{"minecraft:enchantments":{"minecraft:efficiency":2,"minecraft:unbreaking":1,"minecraft:mending":1}}}}}
execute if entity @s[tag=miner] run data merge entity @s {DeathLootTable:"mobs:entities/miner/overworld"}
execute if entity @s[tag=lumberjack] run data merge entity @s {DeathLootTable:"mobs:entities/lumberjack/overworld"}
execute if entity @s[tag=farmer] run data merge entity @s {DeathLootTable:"mobs:entities/farmer/overworld"}


# 坐骑动物获得更高属性，且需要在提高血量上限后设置完整的初始血量
execute as @e[type=camel,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.4 add_multiplied_total
execute as @e[type=camel,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 8 add_value
execute as @e[type=camel,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=camel,tag=!upgraded] run tag @s add upgraded

execute as @e[type=camel_husk,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=camel_husk,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 16 add_value
execute as @e[type=camel_husk,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=camel_husk,tag=!upgraded] run tag @s add upgraded

execute as @e[type=happy_ghast,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 40 add_value
execute as @e[type=happy_ghast,tag=!upgraded] run attribute @s minecraft:flying_speed base set 0.09
execute as @e[type=happy_ghast,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=happy_ghast,tag=!upgraded] run tag @s add upgraded

execute as @e[type=zombie_horse,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=zombie_horse,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 20 add_value
execute as @e[type=zombie_horse,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=zombie_horse,tag=!upgraded] run tag @s add upgraded

execute as @e[type=skeleton_horse,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.8 add_multiplied_total
execute as @e[type=skeleton_horse,tag=!upgraded] run tag @s add upgraded

execute as @e[type=horse,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.6 add_multiplied_total
execute as @e[type=horse,tag=!upgraded] run tag @s add upgraded

# 女巫有相当大的概率在生成的时候附带生成一只劫掠者小队，与女巫等级有关
execute as @e[type=witch,tag=!has_squad] store result score @s Isquad run random value 1..100
execute as @e[type=witch,tag=!has_squad] store result score @s height run data get entity @s Pos[1] 1.0
execute as @e[type=witch,tag=!has_squad,tag=normal_mob] at @s if score @s Isquad matches 1..20 run function main:squad/reinforced_squad/illager_general
execute as @e[type=witch,tag=!has_squad,tag=normal_mob] at @s if score @s Isquad matches 21..30 if score @s height matches 63.. run function main:squad/reinforced_squad/illager_rider
execute as @e[type=witch,tag=!has_squad,tag=normal_mob] at @s if score @s Isquad matches 1..30 run tag @s add has_squad
execute as @e[type=witch,tag=!has_squad,tag=elite_mob] at @s if score @s Isquad matches 1..35 run function main:squad/reinforced_squad/illager_general
execute as @e[type=witch,tag=!has_squad,tag=elite_mob] at @s if score @s Isquad matches 36..50 if score @s height matches 63.. run function main:squad/reinforced_squad/illager_rider
execute as @e[type=witch,tag=!has_squad,tag=elite_mob] at @s if score @s Isquad matches 1..50 run tag @s add has_squad
execute as @e[type=witch,tag=!has_squad,tag=legend_mob] at @s if score @s Isquad matches 1..50 run function main:squad/reinforced_squad/illager_general
execute as @e[type=witch,tag=!has_squad,tag=legend_mob] at @s if score @s Isquad matches 51..70 if score @s height matches 63.. run function main:squad/reinforced_squad/illager_rider
execute as @e[type=witch,tag=!has_squad,tag=legend_mob] at @s if score @s Isquad matches 1..70 run tag @s add has_squad

# 可重复生成的猪灵戍卫（猪灵蛮兵伤害削弱版变体，专门对抗下界的亡灵，且自身在其他维度免疫亡灵化）
execute as @e[type=piglin,tag=!has_guard] at @s run function main:squad/piglin_guard
execute as @e[type=piglin,tag=!has_guard] at @s run tag @s add has_guard
# 地狱的僵尸猪灵有50%概率被一位猪灵戍卫猎杀
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:overworld run tag @s add has_guard
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether run scoreboard players set @s GuardRandom -1
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether store result score @s GuardRandom run random value 1..10
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 1..4 run function main:squad/piglin_guard
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 5 run function main:knight/piglin/guard_knight
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 1..5 run tag @s add has_guard
# execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 1 run tp ~ -50 ~
# execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 1 run kill @s
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 6..10 run tag @s add has_guard

execute as @e[type=zombie_horse,tag=!has_horse_armor,tag=has_rider] run function main:gifted_mobs/assign_suits/assign_horse_armor
execute as @e[type=skeleton_horse,tag=!has_horse_armor,tag=has_rider] run function main:gifted_mobs/assign_suits/assign_horse_armor

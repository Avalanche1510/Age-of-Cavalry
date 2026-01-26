# 更舒服的坐骑速度/属性
execute as @e[type=zombie_horse] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=zombie_horse] run attribute @s minecraft:max_health modifier add max_health 20 add_value
execute as @e[type=skeleton_horse] run attribute @s minecraft:movement_speed modifier add movement_speed 0.8 add_multiplied_total
execute as @e[type=horse] run attribute @s minecraft:movement_speed modifier add movement_speed 0.6 add_multiplied_total
execute as @e[type=horse] run effect give @s regeneration 3 0
execute as @e[type=camel] run attribute @s minecraft:movement_speed modifier add movement_speed 0.4 add_multiplied_total
execute as @e[type=camel] run attribute @s minecraft:max_health modifier add max_health 8 add_value
execute as @e[type=camel] run effect give @s regeneration 3 0
execute as @e[type=camel_husk] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=camel_husk] run attribute @s minecraft:max_health modifier add max_health 16 add_value
execute as @e[type=happy_ghast] run attribute @s minecraft:max_health modifier add max_health 40 add_value
effect give @e[type=happy_ghast] regeneration 3 0


# 更强大的女巫
execute as @e[type=witch,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] at @s run effect give @e[team=illager_party,distance=..6] regeneration 2 0

execute as @e[type=witch,tag=normal_mob] at @s run effect give @e[team=illager_party,distance=..6] regeneration 2 0
execute as @e[type=witch,tag=normal_mob] at @s run effect give @e[team=illager_party,type=!vindicator,distance=..6] speed 2 0

execute as @e[type=witch,tag=elite_mob] at @s run effect give @e[team=illager_party,distance=..8] regeneration 2 0
execute as @e[type=witch,tag=elite_mob] at @s run effect give @e[team=illager_party,type=!vindicator,distance=..8] speed 2 0
execute as @e[type=witch,tag=elite_mob] at @s run effect give @e[team=illager_party,type=!pillager,distance=..8] strength 2 0

execute as @e[type=witch,tag=legend_mob] at @s run effect give @e[team=illager_party,distance=..12] regeneration 2 1
execute as @e[type=witch,tag=legend_mob] at @s run effect give @e[team=illager_party,type=!vindicator,distance=..12] speed 2 0
execute as @e[type=witch,tag=legend_mob] at @s run effect give @e[team=illager_party,type=!pillager,distance=..12] strength 2 0
execute as @e[type=witch,tag=legend_mob] at @s run effect give @e[team=illager_party,distance=..12] resistance 2 0


# 可重复生成的猪灵戍卫（猪灵蛮兵伤害削弱版变体，专门对抗下界的亡灵，且自身在其他维度免疫亡灵化）
execute as @e[type=piglin,tag=!has_guard] at @s run function main:squad/piglin_guard
execute as @e[type=piglin,tag=!has_guard] at @s run tag @s add has_guard
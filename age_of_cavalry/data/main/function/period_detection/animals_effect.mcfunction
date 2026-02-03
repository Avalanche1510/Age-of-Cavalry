# 更舒服的坐骑速度/属性

execute as @e[type=horse] run effect give @s regeneration 3 0


execute as @e[type=camel] run effect give @s regeneration 3 0


effect give @e[type=happy_ghast] regeneration 3 0

execute as @e[type=camel] run attribute @s minecraft:movement_speed modifier add movement_speed 0.4 add_multiplied_total
execute as @e[type=camel] run attribute @s minecraft:max_health modifier add max_health 8 add_value

execute as @e[type=camel_husk] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=camel_husk] run attribute @s minecraft:max_health modifier add max_health 16 add_value
execute as @e[type=happy_ghast] run attribute @s minecraft:max_health modifier add max_health 40 add_value
execute as @e[type=happy_ghast] run attribute @s minecraft:flying_speed base set 0.09

execute as @e[type=zombie_horse] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=zombie_horse] run attribute @s minecraft:max_health modifier add max_health 20 add_value
execute as @e[type=skeleton_horse] run attribute @s minecraft:movement_speed modifier add movement_speed 0.8 add_multiplied_total
execute as @e[type=horse] run attribute @s minecraft:movement_speed modifier add movement_speed 0.6 add_multiplied_total

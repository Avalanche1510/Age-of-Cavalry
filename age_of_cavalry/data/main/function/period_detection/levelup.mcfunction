execute as @a if entity @s[level=..4] run attribute @s minecraft:max_health base set 20
execute as @a if entity @s[level=..4] run attribute @s minecraft:movement_speed base set 0.105
execute as @a if entity @s[level=..4] run attribute @s minecraft:attack_damage base set 1.5
execute as @a if entity @s[level=5..9] run attribute @s minecraft:max_health base set 24 
execute as @a if entity @s[level=..4] run attribute @s minecraft:movement_speed base set 0.110
execute as @a if entity @s[level=5..9] run attribute @s minecraft:attack_damage base set 2
execute as @a if entity @s[level=10..14] run attribute @s minecraft:max_health base set 28 
execute as @a if entity @s[level=..4] run attribute @s minecraft:movement_speed base set 0.115
execute as @a if entity @s[level=10..14] run attribute @s minecraft:attack_damage base set 2.5
execute as @a if entity @s[level=15..19] run attribute @s minecraft:max_health base set 32 
execute as @a if entity @s[level=..4] run attribute @s minecraft:movement_speed base set 0.120
execute as @a if entity @s[level=15..19] run attribute @s minecraft:attack_damage base set 3
execute as @a if entity @s[level=20..29] run attribute @s minecraft:max_health base set 36 
execute as @a if entity @s[level=20..29] run attribute @s minecraft:movement_speed base set 0.125
execute as @a if entity @s[level=20..29] run attribute @s minecraft:attack_damage base set 3.5
execute as @a if entity @s[level=30..] run attribute @s minecraft:max_health base set 40 
execute as @a if entity @s[level=30..] run attribute @s minecraft:movement_speed base set 0.130
execute as @a if entity @s[level=30..] run attribute @s minecraft:attack_damage base set 4
execute as @a if entity @s[level=50..,tag=!near-death] run tellraw @s {"text":"重伤濒死对你而言，已不过是一种司空见惯的日常了。","color":"red"}
execute as @a if entity @s[level=50..,tag=!near-death] run tellraw @s {"text":"[濒死体验]生效: 血量越低，抗性越高...","color":"gold"}
execute as @a if entity @s[level=50..] run tag @s add near-death

execute as @a if entity @s[level=..49] run tag @s remove near-death
execute as @a if entity @s[level=..29] run attribute @s minecraft:attack_speed modifier remove attack_speed
execute as @a if entity @s[level=30..] run attribute @s minecraft:attack_speed modifier add attack_speed 0.24 add_multiplied_total
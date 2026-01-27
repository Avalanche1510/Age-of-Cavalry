# 轻盈的乐魂可以被风弹形成的风暴吹飞
# execute as @e[type=wind_charge] at @s run data modify entity @n[type=happy_ghast,distance=..6] Motion set from entity @s Motion
execute as @e[type=wind_charge] at @s run execute store result entity @n[type=happy_ghast,distance=..6] Motion[0] double 0.002 run data get entity @s Motion[0] 1000
execute as @e[type=wind_charge] at @s run execute store result entity @n[type=happy_ghast,distance=..6] Motion[1] double 0.002 run data get entity @s Motion[1] 1000
execute as @e[type=wind_charge] at @s run execute store result entity @n[type=happy_ghast,distance=..6] Motion[2] double 0.002 run data get entity @s Motion[2] 1000
execute as @e[type=wind_charge] at @s run execute if entity @n[type=happy_ghast,distance=..6] run playsound minecraft:entity.breeze.idle_air master @a[distance=..16] ~ ~ ~ 1.0 1.0 0.1
execute as @e[type=wind_charge] at @s run execute if entity @n[type=happy_ghast,distance=..6] run playsound minecraft:entity.breeze.wind_burst master @a[distance=..16] ~ ~ ~ 1.0 1.0 0.1
execute as @e[type=wind_charge] at @s run execute if entity @n[type=happy_ghast,distance=..6] run particle minecraft:gust_emitter_large ~ ~ ~ 2 2 2 0 8 force
execute as @e[type=wind_charge] at @s run execute if entity @n[type=happy_ghast,distance=..6] run kill @s

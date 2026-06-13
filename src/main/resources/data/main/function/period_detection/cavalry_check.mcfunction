execute as @e[type=!player,tag=cavalry] run tag @s remove cavalry
execute as @e[type=!player,tag=!cavalry] on passengers run tag @s add cavalry

execute as @e[tag=has_rider,type=!player] run tag @s remove has_rider
execute as @e[tag=cavalry,type=!player] on vehicle if entity @s[tag=!has_rider] run tag @s add has_rider
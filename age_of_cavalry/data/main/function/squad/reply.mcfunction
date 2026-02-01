execute at @s run playsound entity.enderman.teleport master @a[distance=..8] ~ ~ ~ 1 1 0.1
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 1 0.5 0.1 20 force
execute if entity @s[team=undead-arthropod_party] run tp @s @n[tag=captain,team=undead-arthropod_party]
execute if entity @s[team=illager_party] run tp @s @n[tag=captain,team=illager_party]
execute if entity @s[team=piglin_party] run tp @s @n[tag=captain,team=piglin_party]
execute if entity @s[type=camel_husk] run tp @s @n[tag=captain,team=undead-arthropod_party]
execute if entity @s[type=skeleton_horse] run tp @s @n[tag=captain,team=undead-arthropod_party]
execute if entity @s[type=zombie_horse] run tp @s @n[tag=captain,team=undead-arthropod_party]
execute at @s run playsound entity.enderman.teleport master @a[distance=..8] ~ ~ ~ 1 1 0.1
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 1 0.5 0.05 20 force

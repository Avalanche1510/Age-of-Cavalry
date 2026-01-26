execute as @e[team=undead-arthropod_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random]
execute as @e[team=undead-arthropod_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random]
execute as @e[team=undead-arthropod_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random]

execute as @e[team=illager_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random]
execute as @e[team=illager_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random]
execute as @e[team=illager_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random]

execute as @e[team=villager_party,type=!villager] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random]
execute as @e[team=villager_party,type=!villager] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random]
execute as @e[team=villager_party,type=!villager] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random]

execute as @e[team=piglin_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random]
execute as @e[team=piglin_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random]
execute as @e[team=piglin_party] at @s positioned ~-20 ~-2 ~-20 if entity @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random] run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random]

execute as @e[team=undead-arthropod_party] run attribute @s minecraft:follow_range base set 24
execute as @e[team=illager_party] run attribute @s minecraft:follow_range base set 24
execute as @e[team=villager_party,type=!villager] run attribute @s minecraft:follow_range base set 24
execute as @e[team=piglin_party] run attribute @s minecraft:follow_range base set 24

#execute at @a run effect give @e[team=undead-arthropod_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=illager_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=villager_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=piglin_party,distance=..20] glowing 3 0 true
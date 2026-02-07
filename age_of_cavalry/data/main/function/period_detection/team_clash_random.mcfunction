execute if entity @s[team=undead-arthropod_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random]
execute if entity @s[team=undead-arthropod_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random]
execute if entity @s[team=undead-arthropod_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random]

execute if entity @s[team=illager_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random]
execute if entity @s[team=illager_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random]
execute if entity @s[team=illager_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random]

execute if entity @s[team=villager_party,type=!villager] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random]
execute if entity @s[team=villager_party,type=!villager] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random]
execute if entity @s[team=villager_party,type=!villager] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=piglin_party,limit=1,sort=random]

execute if entity @s[team=piglin_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=undead-arthropod_party,limit=1,sort=random]
execute if entity @s[team=piglin_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=illager_party,limit=1,sort=random]
execute if entity @s[team=piglin_party] at @s positioned ~-20 ~-2 ~-20 store success score @s track run damage @s 0.0 minecraft:explosion by @e[dx=48,dz=48,dy=8,team=villager_party,limit=1,sort=random]



#execute at @a run effect give @e[team=undead-arthropod_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=illager_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=villager_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=piglin_party,distance=..20] glowing 3 0 true
scoreboard players set @s track 0
execute if entity @s[team=undead-arthropod_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=illager_party]
execute if entity @s[team=undead-arthropod_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=villager_party]
execute if entity @s[team=undead-arthropod_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=piglin_party]

execute if entity @s[team=illager_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=undead-arthropod_party]
execute if entity @s[team=illager_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=villager_party]
execute if entity @s[team=illager_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=piglin_party]

execute if entity @s[team=villager_party,type=!villager] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=undead-arthropod_party]
execute if entity @s[team=villager_party,type=!villager] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=illager_party]
execute if entity @s[team=villager_party,type=!villager] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=piglin_party]

execute if entity @s[team=piglin_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=undead-arthropod_party]
execute if entity @s[team=piglin_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=illager_party]
execute if entity @s[team=piglin_party,tag=!captain] at @s store success score @s track run damage @s 0.0 minecraft:explosion by @n[distance=..12,team=villager_party]


#execute at @a run effect give @e[team=undead-arthropod_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=illager_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=villager_party,distance=..20] glowing 3 0 true
#execute at @a run effect give @e[team=piglin_party,distance=..20] glowing 3 0 true
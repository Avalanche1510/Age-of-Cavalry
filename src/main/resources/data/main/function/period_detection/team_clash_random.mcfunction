execute if entity @s[team=undead-arthropod_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @e[limit=1,sort=random,distance=..24,team=illager_party] UUID
execute if entity @s[team=undead-arthropod_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @e[limit=1,sort=random,distance=..24,team=villager_party] UUID
execute if entity @s[team=undead-arthropod_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @e[limit=1,sort=random,distance=..24,team=piglin_party] UUID

execute if entity @s[team=illager_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=undead-arthropod_party] UUID
execute if entity @s[team=illager_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=villager_party] UUID
execute if entity @s[team=illager_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=piglin_party] UUID

execute if entity @s[team=villager_party,type=!villager] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=undead-arthropod_party] UUID
execute if entity @s[team=villager_party,type=!villager] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=illager_party] UUID
execute if entity @s[team=villager_party,type=!villager] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=piglin_party] UUID

execute if entity @s[team=piglin_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=undead-arthropod_party] UUID
execute if entity @s[team=piglin_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=illager_party] UUID
execute if entity @s[team=piglin_party,tag=!captain] at @s store success score @s track run execute run data modify entity @s last_hurt_by_mob set from entity @n[limit=1, sort=random, distance=..24,team=villager_party] UUID
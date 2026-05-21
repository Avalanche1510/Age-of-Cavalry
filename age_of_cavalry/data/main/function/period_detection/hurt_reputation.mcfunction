# 初始化声望值
execute as @a unless score @s reputation_in_villager matches -2147483648..2147483647 run scoreboard players set @s reputation_in_villager 0
execute as @a unless score @s reputation_in_undead matches -2147483648..2147483647 run scoreboard players set @s reputation_in_undead 0
execute as @a unless score @s reputation_in_illager matches -2147483648..2147483647 run scoreboard players set @s reputation_in_illager 0
execute as @a unless score @s reputation_in_piglin matches -2147483648..2147483647 run scoreboard players set @s reputation_in_piglin 0

# 当阵营生物血量低于50%时，计算声望变化
execute as @e[tag=!insulted,team=undead-arthropod_party] store result score @s health run data get entity @s Health 1
execute as @e[tag=!insulted,team=illager_party] store result score @s health run data get entity @s Health 1
execute as @e[tag=!insulted,team=piglin_party] store result score @s health run data get entity @s Health 1
execute as @e[tag=!insulted,team=villager_party] store result score @s health run data get entity @s Health 1
# maxHealth已经被设置为50%最大血量了，这里不用除2
execute as @e[tag=!insulted,type=!player,team=undead-arthropod_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_undead 1
execute as @e[tag=!insulted,type=!player,team=undead-arthropod_party,tag=normal_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_undead 2
execute as @e[tag=!insulted,type=!player,team=undead-arthropod_party,tag=elite_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_undead 8
execute as @e[tag=!insulted,type=!player,team=undead-arthropod_party,tag=legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_undead 20
execute as @e[tag=!insulted,type=!player,team=undead-arthropod_party,tag=captain] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_undead 10

execute as @e[type=!vex,tag=!insulted,type=!player,team=illager_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_illager 2
execute as @e[type=!vex,tag=!insulted,type=!player,team=illager_party,tag=normal_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_illager 3
execute as @e[type=!vex,tag=!insulted,type=!player,team=illager_party,tag=elite_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_illager 12
execute as @e[type=!vex,tag=!insulted,type=!player,team=illager_party,tag=legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_illager 24
execute as @e[type=!vex,tag=!insulted,type=!player,team=illager_party,tag=captain] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_illager 16

execute as @e[tag=!insulted,type=!player,team=piglin_party,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_piglin 2
execute as @e[tag=!insulted,type=!player,team=piglin_party,tag=normal_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_piglin 3
execute as @e[tag=!insulted,type=!player,team=piglin_party,tag=elite_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_piglin 10
execute as @e[tag=!insulted,type=!player,team=piglin_party,tag=legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_piglin 30
execute as @e[tag=!insulted,type=!player,team=piglin_party,tag=captain] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_piglin 12

execute as @e[tag=!insulted,type=!player,team=villager_party,type=!villager,tag=!normal_mob,tag=!elite_mob,tag=!legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_villager 2
execute as @e[tag=!insulted,type=!player,team=villager_party,type=!villager,tag=normal_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_villager 5
execute as @e[tag=!insulted,type=!player,team=villager_party,type=!villager,tag=elite_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_villager 10
execute as @e[tag=!insulted,type=!player,team=villager_party,type=!villager,tag=legend_mob] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_villager 15
execute as @e[tag=!insulted,team=villager_party,type=villager] if score @s health <= @s maxHealth on attacker if entity @s[type=player] run scoreboard players remove @s reputation_in_villager 12

execute as @e[tag=!insulted,type=!player,team=piglin_party] if score @s health <= @s maxHealth run tag @s add insulted
execute as @e[tag=!insulted,type=!player,team=undead-arthropod_party] if score @s health <= @s maxHealth run tag @s add insulted
execute as @e[tag=!insulted,type=!player,team=illager_party] if score @s health <= @s maxHealth run tag @s add insulted
execute as @e[tag=!insulted,type=!player,team=villager_party] if score @s health <= @s maxHealth run tag @s add insulted

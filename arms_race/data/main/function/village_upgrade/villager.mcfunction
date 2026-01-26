execute as @e[type=villager] unless score @s guardCD matches 0.. run scoreboard players set @s guardCD 0
execute as @e[type=villager] if score @s guardCD matches 1.. run scoreboard players remove @s guardCD 1
execute as @e[type=villager] store result score @s health run data get entity @s Health 1
execute as @e[type=villager,scores={guardCD=0}] if score @s health matches ..10 at @s run summon snow_golem ~1 ~ ~ {Tags:["temporary_golem"]}
execute as @e[type=villager,scores={guardCD=0}] if score @s health matches ..10 at @s run summon snow_golem ~-1 ~ ~ {Tags:["temporary_golem"]}
execute as @e[type=villager,scores={guardCD=0}] if score @s health matches ..10 run effect give @s regeneration 10 1
execute as @e[type=villager,scores={guardCD=0}] if score @s health matches ..10 run scoreboard players set @s guardCD 600
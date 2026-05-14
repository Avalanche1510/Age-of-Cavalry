scoreboard players set @s golem_count 0
execute as @e[team=villager_party,distance=..192,tag=limited] run scoreboard players add @n[tag=region_center,tag=villager_owned] golem_count 1
execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}
execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}
execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}
execute if score @s golem_count matches ..16 run summon iron_golem ~ ~ ~ {Tags:["regional_golem","limited"]}
scoreboard players set @s golem_count 0
spreadplayers ~ ~ 4 192 false @e[type=iron_golem,tag=regional_golem]
execute as @e[type=iron_golem,tag=regional_golem,distance=..192] at @s run setblock ~ ~ ~ torch replace
execute as @e[type=iron_golem,tag=regional_golem,distance=..192] run tag @s remove regional_golem

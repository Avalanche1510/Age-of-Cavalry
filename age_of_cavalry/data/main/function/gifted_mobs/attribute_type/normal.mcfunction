# (攻击力+击退)，(防御力-速度)，(生命值+击退抗性+尺寸)
# 狂战型
execute if score @s skillRandom matches 1 run attribute @s minecraft:max_health modifier add max_health 8 add_value
execute if score @s skillRandom matches 1 run attribute @s minecraft:movement_speed modifier add movement_speed 0.12 add_value
execute if score @s skillRandom matches 1 run attribute @s minecraft:attack_damage modifier add attack_damage 1 add_value

execute if score @s skillRandom matches 1 run attribute @s minecraft:attack_damage modifier add attack_damage 0.25 add_multiplied_total
execute if score @s skillRandom matches 1 run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.12 add_multiplied_total

execute if score @s skillRandom matches 1 run attribute @s minecraft:movement_speed modifier add movement_speed 0.12 add_multiplied_total
execute if score @s skillRandom matches 1 run attribute @s minecraft:armor modifier add armor -0.2 add_multiplied_total

execute if score @s skillRandom matches 1 run attribute @s minecraft:max_health modifier add max_health 0.15 add_multiplied_total
execute if score @s skillRandom matches 1 run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.12 add_value
execute if score @s skillRandom matches 1 run attribute @s minecraft:scale modifier add scale 0.06 add_multiplied_total
execute if score @s skillRandom matches 1 run tag @s add berserker

# 平均型
execute if score @s skillRandom matches 2 run attribute @s minecraft:max_health modifier add max_health 10 add_value
execute if score @s skillRandom matches 2 run attribute @s minecraft:movement_speed modifier add movement_speed 0.1 add_value
execute if score @s skillRandom matches 2 run attribute @s minecraft:attack_damage modifier add attack_damage 1 add_value

execute if score @s skillRandom matches 2 run attribute @s minecraft:attack_damage modifier add attack_damage 0.1 add_multiplied_total
execute if score @s skillRandom matches 2 run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.1 add_multiplied_total

execute if score @s skillRandom matches 2 run attribute @s minecraft:movement_speed modifier add movement_speed 0.05 add_multiplied_total
execute if score @s skillRandom matches 2 run attribute @s minecraft:armor modifier add armor 0.1 add_multiplied_total

execute if score @s skillRandom matches 2 run attribute @s minecraft:max_health modifier add max_health 0.1 add_multiplied_total
execute if score @s skillRandom matches 2 run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.05 add_value
execute if score @s skillRandom matches 2 run attribute @s minecraft:scale modifier add scale 0.03 add_multiplied_total
execute if score @s skillRandom matches 2 run tag @s add balanced

# 坦克型
execute if score @s skillRandom matches 3 run attribute @s minecraft:max_health modifier add max_health 16 add_value
execute if score @s skillRandom matches 3 run attribute @s minecraft:movement_speed modifier add movement_speed 0.05 add_value
execute if score @s skillRandom matches 3 run attribute @s minecraft:attack_damage modifier add attack_damage 1 add_value

execute if score @s skillRandom matches 3 run attribute @s minecraft:attack_damage modifier add attack_damage -0.15 add_multiplied_total
execute if score @s skillRandom matches 3 run attribute @s minecraft:attack_knockback modifier add attack_knockback -0.05 add_multiplied_total

execute if score @s skillRandom matches 3 run attribute @s minecraft:movement_speed modifier add movement_speed -0.2 add_multiplied_total
execute if score @s skillRandom matches 3 run attribute @s minecraft:armor modifier add armor 0.15 add_multiplied_total

execute if score @s skillRandom matches 3 run attribute @s minecraft:max_health modifier add max_health 0.3 add_multiplied_total
execute if score @s skillRandom matches 3 run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.15 add_value
execute if score @s skillRandom matches 3 run attribute @s minecraft:scale modifier add scale 0.12 add_multiplied_total
execute if score @s skillRandom matches 3 run tag @s add tank

# 刺客型
execute if score @s skillRandom matches 4 run attribute @s minecraft:max_health modifier add max_health 5 add_value
execute if score @s skillRandom matches 4 run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_value
execute if score @s skillRandom matches 4 run attribute @s minecraft:attack_damage modifier add attack_damage 1 add_value

execute if score @s skillRandom matches 4 run attribute @s minecraft:attack_damage modifier add attack_damage 0.35 add_multiplied_total
execute if score @s skillRandom matches 4 run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.15 add_multiplied_total

execute if score @s skillRandom matches 4 run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute if score @s skillRandom matches 4 run attribute @s minecraft:armor modifier add armor -0.1 add_multiplied_total

execute if score @s skillRandom matches 4 run attribute @s minecraft:max_health modifier add max_health -0.1 add_multiplied_total
execute if score @s skillRandom matches 4 run attribute @s minecraft:knockback_resistance modifier add knockback_resistance -0.1 add_value
execute if score @s skillRandom matches 4 run attribute @s minecraft:scale modifier add scale -0.08 add_multiplied_total
execute if score @s skillRandom matches 4 run tag @s add assassin

# 对抗型
execute if score @s skillRandom matches 5 run attribute @s minecraft:max_health modifier add max_health 12 add_value
execute if score @s skillRandom matches 5 run attribute @s minecraft:movement_speed modifier add movement_speed 0.12 add_value
execute if score @s skillRandom matches 5 run attribute @s minecraft:attack_damage modifier add attack_damage 1 add_value

execute if score @s skillRandom matches 5 run attribute @s minecraft:attack_damage modifier add attack_damage -0.1 add_multiplied_total
execute if score @s skillRandom matches 5 run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.2 add_multiplied_total

execute if score @s skillRandom matches 5 run attribute @s minecraft:movement_speed modifier add movement_speed 0.12 add_multiplied_total
execute if score @s skillRandom matches 5 run attribute @s minecraft:armor modifier add armor 0.12 add_multiplied_total

execute if score @s skillRandom matches 5 run attribute @s minecraft:max_health modifier add max_health 0.12 add_multiplied_total
execute if score @s skillRandom matches 5 run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.12 add_value
execute if score @s skillRandom matches 5 run attribute @s minecraft:scale modifier add scale 0.05 add_multiplied_total
execute if score @s skillRandom matches 5 run tag @s add duelist

# 弓箭手
execute if entity @s[tag=archer] run attribute @s minecraft:max_health modifier add max_health 10 add_value
execute if entity @s[tag=archer] run attribute @s minecraft:attack_damage modifier add attack_damage 1 add_value

execute if entity @s[tag=archer] run attribute @s minecraft:attack_damage modifier add attack_damage -0.2 add_multiplied_total
execute if entity @s[tag=archer] run attribute @s minecraft:attack_knockback modifier add attack_knockback -0.15 add_multiplied_total

execute if entity @s[tag=archer] run attribute @s minecraft:movement_speed modifier add movement_speed -0.1 add_multiplied_total
execute if entity @s[tag=archer] run attribute @s minecraft:armor modifier add armor -0.1 add_multiplied_total

execute if entity @s[tag=archer] run attribute @s minecraft:max_health modifier add max_health -0.1 add_multiplied_total
execute if entity @s[tag=archer] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance -0.1 add_value
execute if entity @s[tag=archer] run attribute @s minecraft:scale modifier add scale -0.05 add_multiplied_total

# 其他怪物：
execute if entity @s[type=creeper] run data merge entity @s {ExplosionRadius:4,Fuse:35}



execute store result score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom run random value 1..100
execute store result score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] height run data get entity @s Pos[1] 1

execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 1..15 if score @s height matches ..62 if dimension minecraft:overworld run tag @s add miner
execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 16..18 if score @s height matches ..62 if dimension minecraft:overworld run tag @s add lumberjack
execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 19..21 if score @s height matches ..62 if dimension minecraft:overworld run tag @s add farmer

execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 1..3 if score @s height matches 63.. if dimension minecraft:overworld run tag @s add miner
execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 4..14 if score @s height matches 63.. if dimension minecraft:overworld run tag @s add lumberjack
execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 15..24 if score @s height matches 63.. if dimension minecraft:overworld run tag @s add farmer

execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 1..7 if dimension minecraft:the_nether run tag @s add miner
execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 8..14 if dimension minecraft:the_nether run tag @s add lumberjack
execute at @s if score @s[tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] itemRandom matches 15..21 if dimension minecraft:the_nether run tag @s add farmer

execute unless entity @s[tag=!miner,tag=!lumberjack,tag=!farmer] run tag @s add collecter


execute store result score @s[tag=armor,tag=!collecter,tag=!notCaptain] itemRandom run random value 1..100
execute at @s if score @s[tag=armor,tag=!collecter,tag=!notCaptain] itemRandom matches 1..5 run tag @s add captain 
execute at @s if entity @s[tag=captain,tag=!collecter] run function main:squad/recruit_teammate
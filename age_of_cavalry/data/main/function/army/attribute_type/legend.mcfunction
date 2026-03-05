# (攻击力+击退)，(防御力-速度)，(生命值+击退抗性+尺寸)
# 狂战型
execute if entity @s[tag=berserker] run attribute @s minecraft:max_health modifier add max_health 42 add_value
execute if entity @s[tag=berserker] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_value
execute if entity @s[tag=berserker] run attribute @s minecraft:attack_damage modifier add attack_damage 4 add_value

execute if entity @s[tag=berserker] run attribute @s minecraft:attack_damage modifier add attack_damage 1.2 add_multiplied_total
execute if entity @s[tag=berserker] run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.4 add_multiplied_total

execute if entity @s[tag=berserker] run attribute @s minecraft:movement_speed modifier add movement_speed 0.24 add_multiplied_total
execute if entity @s[tag=berserker] run attribute @s minecraft:armor modifier add armor 0.1 add_multiplied_total

execute if entity @s[tag=berserker] run attribute @s minecraft:max_health modifier add max_health 0.50 add_multiplied_total
execute if entity @s[tag=berserker] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.24 add_value
execute if entity @s[tag=berserker] run attribute @s minecraft:scale modifier add scale 0.30 add_multiplied_total

# 平均型
execute if entity @s[tag=balanced] run attribute @s minecraft:max_health modifier add max_health 48 add_value
execute if entity @s[tag=balanced] run attribute @s minecraft:movement_speed modifier add movement_speed 0.16 add_value
execute if entity @s[tag=balanced] run attribute @s minecraft:attack_damage modifier add attack_damage 4 add_value

execute if entity @s[tag=balanced] run attribute @s minecraft:attack_damage modifier add attack_damage 0.6 add_multiplied_total
execute if entity @s[tag=balanced] run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.32 add_multiplied_total

execute if entity @s[tag=balanced] run attribute @s minecraft:movement_speed modifier add movement_speed 0.18 add_multiplied_total
execute if entity @s[tag=balanced] run attribute @s minecraft:armor modifier add armor 0.32 add_multiplied_total

execute if entity @s[tag=balanced] run attribute @s minecraft:max_health modifier add max_health 0.32 add_multiplied_total
execute if entity @s[tag=balanced] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.18 add_value
execute if entity @s[tag=balanced] run attribute @s minecraft:scale modifier add scale 0.24 add_multiplied_total

# 坦克型
execute if entity @s[tag=tank] run attribute @s minecraft:max_health modifier add max_health 64 add_value
execute if entity @s[tag=tank] run attribute @s minecraft:movement_speed modifier add movement_speed 0.14 add_value
execute if entity @s[tag=tank] run attribute @s minecraft:attack_damage modifier add attack_damage 4 add_value

execute if entity @s[tag=tank] run attribute @s minecraft:attack_damage modifier add attack_damage 0.15 add_multiplied_total
execute if entity @s[tag=tank] run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.05 add_multiplied_total

execute if entity @s[tag=tank] run attribute @s minecraft:movement_speed modifier add movement_speed -0.05 add_multiplied_total
execute if entity @s[tag=tank] run attribute @s minecraft:armor modifier add armor 0.5 add_multiplied_total

execute if entity @s[tag=tank] run attribute @s minecraft:max_health modifier add max_health 2.0 add_multiplied_total
execute if entity @s[tag=tank] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.48 add_value
execute if entity @s[tag=tank] run attribute @s minecraft:scale modifier add scale 0.48 add_multiplied_total

# 刺客型
execute if entity @s[tag=assassin] run attribute @s minecraft:max_health modifier add max_health 36 add_value
execute if entity @s[tag=assassin] run attribute @s minecraft:movement_speed modifier add movement_speed 0.16 add_value
execute if entity @s[tag=assassin] run attribute @s minecraft:attack_damage modifier add attack_damage 4 add_value

execute if entity @s[tag=assassin] run attribute @s minecraft:attack_damage modifier add attack_damage 2.4 add_multiplied_total
execute if entity @s[tag=assassin] run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.5 add_multiplied_total

execute if entity @s[tag=assassin] run attribute @s minecraft:movement_speed modifier add movement_speed 0.48 add_multiplied_total
execute if entity @s[tag=assassin] run attribute @s minecraft:armor modifier add armor -0.15 add_multiplied_total

execute if entity @s[tag=assassin] run attribute @s minecraft:max_health modifier add max_health 0.1 add_multiplied_total
execute if entity @s[tag=assassin] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance -0.1 add_value
execute if entity @s[tag=assassin] run attribute @s minecraft:scale modifier add scale -0.1 add_multiplied_total

# 对抗型
execute if entity @s[tag=duelist] run attribute @s minecraft:max_health modifier add max_health 56 add_value
execute if entity @s[tag=duelist] run attribute @s minecraft:movement_speed modifier add movement_speed 0.16 add_value
execute if entity @s[tag=duelist] run attribute @s minecraft:attack_damage modifier add attack_damage 4 add_value

execute if entity @s[tag=duelist] run attribute @s minecraft:attack_damage modifier add attack_damage 0.2 add_multiplied_total
execute if entity @s[tag=duelist] run attribute @s minecraft:attack_knockback modifier add attack_knockback 1.2 add_multiplied_total

execute if entity @s[tag=duelist] run attribute @s minecraft:movement_speed modifier add movement_speed 0.4 add_multiplied_total
execute if entity @s[tag=duelist] run attribute @s minecraft:armor modifier add armor 0.4 add_multiplied_total

execute if entity @s[tag=duelist] run attribute @s minecraft:max_health modifier add max_health 0.4 add_multiplied_total
execute if entity @s[tag=duelist] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.28 add_value
execute if entity @s[tag=duelist] run attribute @s minecraft:scale modifier add scale 0.28 add_multiplied_total

# 弓箭手
execute if entity @s[tag=archer] run attribute @s minecraft:max_health modifier add max_health 48 add_value
execute if entity @s[tag=archer] run attribute @s minecraft:attack_damage modifier add attack_damage 4 add_value

execute if entity @s[tag=archer] run attribute @s minecraft:attack_damage modifier add attack_damage 0.2 add_multiplied_total
execute if entity @s[tag=archer] run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.1 add_multiplied_total

execute if entity @s[tag=archer] run attribute @s minecraft:movement_speed modifier add movement_speed -0.1 add_multiplied_total
execute if entity @s[tag=archer] run attribute @s minecraft:armor modifier add armor -0.1 add_multiplied_total

execute if entity @s[tag=archer] run attribute @s minecraft:max_health modifier add max_health 0.2 add_multiplied_total
execute if entity @s[tag=archer] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.1 add_value
execute if entity @s[tag=archer] run attribute @s minecraft:scale modifier add scale 0.12 add_multiplied_total

data merge entity @s {Health:1000.0f,drop_chances:{feet:0.5f,legs:0.5f,chest:0.5f,head:0.5f,mainhand:0.5f,offhand:0.5f},ArmorDropChances:[0.25f,0.25f,0.25f,0.25f]}
scoreboard players set @s isGifted -1
tag @s add has_attributes
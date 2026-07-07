# 坐骑动物获得更高属性，且需要在提高血量上限后设置完整的初始血量
# execute as @e[team=undead-arthropod_party,tag=!upgraded] run attribute @s minecraft:follow_range base set 24
# execute as @e[team=illager_party,tag=!upgraded] run attribute @s minecraft:follow_range base set 24
# execute as @e[team=villager_party,type=!villager,tag=!upgraded] run attribute @s minecraft:follow_range base set 24
# execute as @e[team=piglin_party,tag=!upgraded] run attribute @s minecraft:follow_range base set 24

execute as @e[type=!player,team=illager_party,type=!vex,type=!ravager] unless entity @s[tag=armor] run tag @s add armor
execute as @e[type=!player,team=undead-arthropod_party,type=!phantom,type=!zoglin,type=!skeleton_horse,type=!zombie_horse,type=!camel_husk,type=!zombie_nautilus,type=!spider,type=!cave_spider] unless entity @s[tag=armor] run tag @s add armor
execute as @e[type=!player,team=piglin_party,type=!magma_cube,type=!hoglin,type=!blaze] unless entity @s[tag=armor] run tag @s add armor
execute as @e[team=villager_party,type=guardvillagers:guard] unless entity @s[tag=armor] run tag @s add armor

execute as @e[type=camel,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.4 add_multiplied_total
execute as @e[type=camel,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 8 add_value
execute as @e[type=camel,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=camel,tag=!upgraded] run tag @s add upgraded

execute as @e[type=camel_husk,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=camel_husk,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 16 add_value
execute as @e[type=camel_husk,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=camel_husk,tag=!upgraded] run tag @s add upgraded

execute as @e[type=happy_ghast,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 40 add_value
execute as @e[type=happy_ghast,tag=!upgraded] run attribute @s minecraft:flying_speed base set 0.09
execute as @e[type=happy_ghast,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=happy_ghast,tag=!upgraded] run tag @s add upgraded

execute as @e[type=zombie_horse,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.2 add_multiplied_total
execute as @e[type=zombie_horse,tag=!upgraded] run attribute @s minecraft:max_health modifier add max_health 20 add_value
execute as @e[type=zombie_horse,tag=!upgraded] run data merge entity @s {Health:1000}
execute as @e[type=zombie_horse,tag=!upgraded] run tag @s add upgraded

execute as @e[type=skeleton_horse,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.8 add_multiplied_total
execute as @e[type=skeleton_horse,tag=!upgraded] run tag @s add upgraded

execute as @e[type=horse,tag=!upgraded] run attribute @s minecraft:movement_speed modifier add movement_speed 0.6 add_multiplied_total
execute as @e[type=horse,tag=!upgraded] run tag @s add upgraded



# 女巫有相当大的概率在生成的时候附带生成一只劫掠者小队，与女巫等级有关
# execute as @e[type=witch,tag=!has_squad] store result score @s Isquad run random value 1..100
# execute as @e[type=witch,tag=!has_squad] store result score @s height run data get entity @s Pos[1] 1.0
# execute as @e[type=witch,tag=!has_squad] at @s if score @s Isquad matches 1..10 run function main:squad/reinforced_squad/illager_general
# execute as @e[type=witch,tag=!has_squad] at @s if score @s Isquad matches 11..20 if score @s height matches 63.. run function main:squad/reinforced_squad/illager_rider
# execute as @e[type=witch,tag=!has_squad,tag=normal_mob] at @s if score @s Isquad matches 1..20 run function main:squad/reinforced_squad/illager_general
# execute as @e[type=witch,tag=!has_squad,tag=normal_mob] at @s if score @s Isquad matches 21..40 if score @s height matches 63.. run function main:squad/reinforced_squad/illager_rider
# execute as @e[type=witch,tag=!has_squad,tag=elite_mob] at @s if score @s Isquad matches 1..30 run function main:squad/reinforced_squad/illager_general
# execute as @e[type=witch,tag=!has_squad,tag=elite_mob] at @s if score @s Isquad matches 31..60 if score @s height matches 63.. run function main:squad/reinforced_squad/illager_rider
# execute as @e[type=witch,tag=!has_squad,tag=legend_mob] at @s if score @s Isquad matches 1..40 run function main:squad/reinforced_squad/illager_general
# execute as @e[type=witch,tag=!has_squad,tag=legend_mob] at @s if score @s Isquad matches 41..80 if score @s height matches 63.. run function main:squad/reinforced_squad/illager_rider
# execute as @e[type=witch,tag=!has_squad] at @s run tag @s add has_squad

# 可重复生成的猪灵戍卫（猪灵蛮兵伤害削弱版变体，专门对抗下界的亡灵，且自身在其他维度免疫亡灵化）
execute as @e[type=piglin,tag=!has_guard] at @s unless entity @p[distance=..32] run function main:squad/reinforced_squad/unit/piglin_unit/piglin_guard
execute as @e[type=piglin,tag=!has_guard] at @s run tag @s add has_guard
# 地狱的僵尸猪灵有50%概率被一位猪灵戍卫猎杀
execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:overworld run tag @s add has_guard
execute as @e[type=zombified_piglin,tag=!has_guard] at @s unless entity @p[distance=..32] if dimension minecraft:the_nether run scoreboard players set @s GuardRandom -1
execute as @e[type=zombified_piglin,tag=!has_guard] at @s unless entity @p[distance=..32] if dimension minecraft:the_nether store result score @s GuardRandom run random value 1..10
execute as @e[type=zombified_piglin,tag=!has_guard] at @s unless entity @p[distance=..32] if dimension minecraft:the_nether if score @s GuardRandom matches 1..4 run function main:squad/reinforced_squad/unit/piglin_unit/piglin_guard
execute as @e[type=zombified_piglin,tag=!has_guard] at @s unless entity @p[distance=..32] if dimension minecraft:the_nether if score @s GuardRandom matches 5 run function main:knight/piglin/guard_knight
execute as @e[type=zombified_piglin,tag=!has_guard] at @s unless entity @p[distance=..32] if dimension minecraft:the_nether if score @s GuardRandom matches 1..5 run tag @s add has_guard
# execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 1 run tp ~ -50 ~
# execute as @e[type=zombified_piglin,tag=!has_guard] at @s if dimension minecraft:the_nether if score @s GuardRandom matches 1 run kill @s
execute as @e[type=zombified_piglin,tag=!has_guard] at @s unless entity @p[distance=..32] if dimension minecraft:the_nether if score @s GuardRandom matches 6..10 run tag @s add has_guard

# 削弱恼鬼
execute as @e[type=vex,tag=!weakened] at @s run data merge entity @s {life_ticks:400}
execute as @e[type=vex,tag=!weakened] at @s run tag @s add weakened

# 哨兵
execute as @e[tag=overwatch,tag=!watching] at @s run data merge entity @s {PersistenceRequired:1b}
execute as @e[tag=overwatch,tag=!watching] at @s run tag @s add watching


execute as @e[team=undead-arthropod_party,tag=!existed] at @s if dimension minecraft:overworld if score @n[type=armor_stand,tag=record] difficulty matches 1..5 run tag @s add existed
execute as @e[team=illager_party,tag=!existed] at @s if dimension minecraft:overworld if score @n[type=armor_stand,tag=record] difficulty matches 1..5 run tag @s add existed
execute as @e[team=undead-arthropod_party,tag=!existed] at @s if dimension minecraft:overworld if score @n[type=armor_stand,tag=record] turbulence matches 1000..1199 run tp @s ~ -500 ~
execute as @e[team=illager_party,tag=!existed] at @s if dimension minecraft:overworld if score @n[type=armor_stand,tag=record] turbulence matches 1000..1199 run tp @s ~ -500 ~

# 10%的村民守卫会获得火把
execute as @e[tag=armor,tag=!checked_career] at @s store result score @s career_random run random value 1..100
execute as @e[tag=!checked_career,type=guardvillagers:guard,tag=torch_holder] if score @s career_random matches 91..100 run item replace entity @s weapon.offhand with torch 1
execute as @e[tag=!checked_career,type=guardvillagers:guard,tag=!torch_holder] if score @s career_random matches 91..100 run tag @s add torch_holder

# 部分怪物会变成特定职业的变体，获得对应职业的标签，之后会根据标签获得特定的属性加成和装备
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] store result score @s height run data get entity @s Pos[1] 1

execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 1..15 if score @s height matches ..62 if dimension minecraft:overworld run tag @s add miner
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 16..18 if score @s height matches ..62 if dimension minecraft:overworld run tag @s add lumberjack
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 19..21 if score @s height matches ..62 if dimension minecraft:overworld run tag @s add farmer

execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 1..3 if score @s height matches 63.. if dimension minecraft:overworld run tag @s add miner
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 4..14 if score @s height matches 63.. if dimension minecraft:overworld run tag @s add lumberjack
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 15..24 if score @s height matches 63.. if dimension minecraft:overworld run tag @s add farmer

execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 1..7 if dimension minecraft:the_nether run tag @s add miner
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 8..14 if dimension minecraft:the_nether run tag @s add lumberjack
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] at @s if score @s career_random matches 15..21 if dimension minecraft:the_nether run tag @s add farmer

execute as @e[tag=!checked_career,tag=armor,team=!illager_party,team=!villager_party,tag=!captain,tag=!battle_unit] unless entity @s[tag=!miner,tag=!lumberjack,tag=!farmer] run tag @s add collecter
execute as @e[tag=!checked_career,tag=armor,team=!illager_party,tag=!captain,tag=!battle_unit] run tag @s add checked_career


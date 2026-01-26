# 随机属性
execute if items entity @s weapon.* bow run tag @s add archer
execute if items entity @s weapon.* crossbow run tag @s add archer
execute if items entity @s weapon.* trident run tag @s add archer
execute store result score @s[tag=!archer] skillRandom run random value 1..5
execute if entity @s[tag=normal_mob] run function main:gifted_mobs/attribute_type/normal
execute if entity @s[tag=elite_mob] run function main:gifted_mobs/attribute_type/elite
execute if entity @s[tag=legend_mob] run function main:gifted_mobs/attribute_type/legend

execute if entity @s[tag=normal_mob,team=undead-arthropod_party,type=!zombified_piglin,type=!wither_skeleton,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/undead/normal"}
execute if entity @s[tag=elite_mob,team=undead-arthropod_party,type=!zombified_piglin,type=!wither_skeleton,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/undead/elite"}
execute if entity @s[tag=legend_mob,team=undead-arthropod_party,type=!zombified_piglin,type=!wither_skeleton,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/undead/legend"}

execute if entity @s[tag=normal_mob,team=piglin_party,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/normal_piglin"}
execute if entity @s[tag=elite_mob,team=piglin_party,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/elite_piglin"}
execute if entity @s[tag=legend_mob,team=piglin_party,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/legend_piglin"}

execute if entity @s[type=zombified_piglin,tag=normal_mob,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/normal_undead"}
execute if entity @s[type=zombified_piglin,tag=elite_mob,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/elite_undead"}
execute if entity @s[type=zombified_piglin,tag=legend_mob,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/legend_undead"}
execute if entity @s[type=wither_skeleton,tag=normal_mob,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/normal_undead"}
execute if entity @s[type=wither_skeleton,tag=elite_mob,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/elite_undead"}
execute if entity @s[type=wither_skeleton,tag=legend_mob,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/nether/legend_undead"}

execute if entity @s[tag=normal_mob,team=illager_party,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/illager/normal"}
execute if entity @s[tag=elite_mob,team=illager_party,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/illager/elite"}
execute if entity @s[tag=legend_mob,team=illager_party,tag=!collecter] run data merge entity @s {DeathLootTable:"mobs:entities/illager/legend"}

execute if entity @s[tag=normal_mob,type=creeper] run data merge entity @s {DeathLootTable:"mobs:entities/creeper/normal"}
execute if entity @s[tag=elite_mob,type=creeper] run data merge entity @s {DeathLootTable:"mobs:entities/creeper/elite"}
execute if entity @s[tag=legend_mob,type=creeper] run data merge entity @s {DeathLootTable:"mobs:entities/creeper/legend"}
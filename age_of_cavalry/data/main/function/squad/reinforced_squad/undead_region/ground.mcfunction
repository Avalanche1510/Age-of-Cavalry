summon zombie ~ ~ ~ {Tags:["captain"],equipment:{chest:{id:"minecraft:leather_chestplate",count:1},mainhand:{id:"minecraft:stone_sword",count:1b}}}
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_ground
execute as @n[tag=captain,type=zombie,tag=!summon_squad] run tag @s add summon_squad
scoreboard players set @s AlreadySpawned 1
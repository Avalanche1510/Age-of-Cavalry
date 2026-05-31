summon skeleton ~ ~ ~ {Tags:["captain"],equipment:{chest:{id:"minecraft:chainmail_chestplate",count:1},mainhand:{id:"minecraft:bow",count:1b}}}
execute as @n[tag=captain,type=skeleton,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_underground
execute as @n[tag=captain,type=skeleton,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_underground
execute as @n[tag=captain,type=skeleton,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_underground
execute as @n[tag=captain,type=skeleton,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_underground
execute as @n[tag=captain,type=skeleton,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_underground
execute as @n[tag=captain,type=skeleton,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/undead_unit/select_underground
execute as @n[tag=captain,type=skeleton,tag=!summon_squad] run tag @s add summon_squad
scoreboard players set @s AlreadySpawned 1
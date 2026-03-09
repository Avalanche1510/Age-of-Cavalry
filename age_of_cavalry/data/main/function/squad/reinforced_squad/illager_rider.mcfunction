summon ravager ~ ~ ~ {Passengers:[{Tags:["battle_unit","captain"],id:"minecraft:evoker",PatrolLeader:1b,Patrolling:1b}]}
execute as @n[type=ravager,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/illager_unit/select_knights
execute as @n[type=ravager,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/illager_unit/select_knights
execute as @n[type=ravager,tag=!summon_squad] at @s run function main:squad/reinforced_squad/unit/illager_unit/select_knights
execute as @n[type=ravager,tag=!summon_squad] run tag @s add summon_squad
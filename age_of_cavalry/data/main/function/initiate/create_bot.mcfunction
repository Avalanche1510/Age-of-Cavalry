execute if entity @e[type=armor_stand,tag=record] run say 已存在现有的记录人偶，禁止添加新的记录人偶！
execute unless entity @e[type=armor_stand,tag=record] run forceload add ~-16 ~-16 ~16 ~16
execute unless entity @e[type=armor_stand,tag=record] run say 已创建记录人偶，半径16格之内将被设为强加载区块！
execute unless entity @e[type=armor_stand,tag=record] run say 请勿删除记录人偶，否则数据包将无法正常运行！



# 世界动荡等级初始化
execute unless entity @e[type=armor_stand,tag=record] run bossbar add world_turbulence {text:"世界动荡等级",color:"white"}
execute unless entity @e[type=armor_stand,tag=record] run bossbar set world_turbulence max 1200
execute unless entity @e[type=armor_stand,tag=record] run bossbar set world_turbulence style notched_6





execute unless entity @e[type=armor_stand,tag=record] run summon armor_stand ~ ~ ~ {CustomName:{"text":"Record","color":"green"}, Tags:["record"], Marker:1b,CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=record] run bossbar set world_turbulence value 100
execute as @e[type=armor_stand,tag=record] run scoreboard players set @s turbulence 100
execute as @e[type=armor_stand,tag=record] run function main:period_detection/turbulence_stages
scoreboard players set @e[type=armor_stand,tag=record] difficulty 1
scoreboard players set @e[type=armor_stand,tag=record] halt 0
scoreboard players set @e[type=armor_stand,tag=record] last_stage 0
execute as @e[type=armor_stand,tag=record] run scoreboard players set @s undead_tension 0
execute as @e[type=armor_stand,tag=record] run scoreboard players set @s illager_tension 0
execute as @e[type=armor_stand,tag=record] run scoreboard players set @s piglin_tension 0
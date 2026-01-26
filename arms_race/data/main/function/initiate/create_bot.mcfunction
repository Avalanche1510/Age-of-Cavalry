execute if entity @e[type=armor_stand,tag=record] run say 已存在现有的记录人偶，禁止添加新的记录人偶！
execute unless entity @e[type=armor_stand,tag=record] run forceload add ~-16 ~-16 ~16 ~16
execute unless entity @e[type=armor_stand,tag=record] run say 初始化记录人偶完成，半径16格之内将被设为强加载区块！
execute unless entity @e[type=armor_stand,tag=record] run summon armor_stand ~ ~ ~ {CustomName:{"text":"Record","color":"green"}, Tags:["record"], Marker:1b,CustomNameVisible:1b}
scoreboard players set @e[type=armor_stand,tag=record] difficulty 1
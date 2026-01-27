execute if entity @e[type=armor_stand,tag=record] at @s run say 已删除所有记录人偶，并且解除所在的强加载区块！
execute unless entity @e[type=armor_stand,tag=record] at @s run say 尚未部署任何记录人偶！
execute as @e[type=armor_stand,tag=record] at @s run forceload remove ~-16 ~-16 ~16 ~16
execute as @e[type=armor_stand,tag=record] at @s run kill @s
scoreboard players set @e[type=armor_stand,tag=record] difficulty 0
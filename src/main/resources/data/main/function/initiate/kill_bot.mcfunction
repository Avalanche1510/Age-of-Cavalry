execute if entity @n[type=armor_stand,tag=record] at @s run say 已删除所有记录人偶，并且解除所在的强加载区块！
execute unless entity @n[type=armor_stand,tag=record] at @s run say 尚未部署任何记录人偶！
execute as @n[type=armor_stand,tag=record] at @s run forceload remove ~-16 ~-16 ~16 ~16
execute as @n[type=armor_stand,tag=record] at @s run kill @s
scoreboard players set @n[type=armor_stand,tag=record] difficulty 0
scoreboard players set @a undead_killed 0
scoreboard players set @a illager_killed 0
scoreboard players set @a piglin_killed 0
kill @e[type=marker,tag=region_center]
bossbar remove world_turbulence
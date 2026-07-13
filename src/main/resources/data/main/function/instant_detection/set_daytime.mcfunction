execute unless score @n[type=armor_stand,tag=record] daytime matches -2147483648..2147483647 run scoreboard players set @n[type=armor_stand,tag=record] daytime 0

# 获取并修正时间，获取的时间将会比实际时间延后1 tick
execute as @n[type=armor_stand,tag=record] store result score @s daytime run time query day
execute as @n[type=armor_stand,tag=record] run scoreboard players add @s daytime 1

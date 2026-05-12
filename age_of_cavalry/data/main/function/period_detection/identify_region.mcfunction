execute as @a unless score @s last_region_id matches -2147483648..2147483647 run scoreboard players set @s last_region_id 0
execute as @e[type=marker, tag=region_center] unless score @s region_id matches -2147483648..2147483647 run scoreboard players set @s region_id 0

execute as @e[type=marker, tag=region_center] store result score @s region_id run data get entity @s UUID[0]
execute as @a at @s unless score @s last_region_id = @n[type=marker,distance=..192,tag=region_center,limit=1] region_id run execute if entity @n[type=marker,distance=..192,tag=region_center] run tellraw @s {"text":"你进入了另一个区域！","color":"white"}
execute as @a at @s unless score @s last_region_id = @n[type=marker,distance=..192,tag=region_center,limit=1] region_id run execute if score @n[type=marker,distance=..192,tag=region_center,tag=neutral] region_id = @n[type=marker,distance=..192,tag=region_center] region_id run tellraw @s {"text":"该区域目前是中立的。任何派系都尚未完全占领它。","color":"yellow"}
execute as @a at @s unless score @s last_region_id = @n[type=marker,distance=..192,tag=region_center,limit=1] region_id run execute if score @n[type=marker,distance=..192,tag=region_center,tag=undead_owned] region_id = @n[type=marker,distance=..192,tag=region_center] region_id run tellraw @s {"text":"该区域目前被亡灵控制。小心！","color":"dark_green"}
execute as @a at @s unless score @s last_region_id = @n[type=marker,distance=..192,tag=region_center,limit=1] region_id run execute if score @n[type=marker,distance=..192,tag=region_center,tag=illager_owned] region_id = @n[type=marker,distance=..192,tag=region_center] region_id run tellraw @s {"text":"该区域目前被灾厄村民控制。做好准备，迎接激烈的战斗！","color":"dark_blue"}
execute as @a at @s unless score @s last_region_id = @n[type=marker,distance=..192,tag=region_center,limit=1] region_id run execute if score @n[type=marker,distance=..192,tag=region_center,tag=villager_owned] region_id = @n[type=marker,distance=..192,tag=region_center] region_id run tellraw @s {"text":"该区域目前被村民控制。他们可能会提供帮助或进行交易！","color":"dark_gray"}


execute as @a at @s store result score @s last_region_id run scoreboard players get @n[type=marker,distance=..192,tag=region_center,limit=1] region_id
# 可爱的乐魂可以每2秒将丢出的tnt掉落物转换为tnt实体并且继承其动能
# execute as @e[type=wind_charge] at @s run data modify entity @n[type=happy_ghast,distance=..6] Motion set from entity @s Motion
execute as @e[type=happy_ghast] unless score @s ghastBombingCD matches 0.. run scoreboard players set @s ghastBombingCD 0
execute as @e[type=happy_ghast] if score @s ghastBombingCD matches ..39 run scoreboard players add @s ghastBombingCD 1
execute as @e[type=happy_ghast] at @s if score @s ghastBombingCD matches 40.. run execute if entity @e[distance=..5,type=item,nbt={Item:{id:"minecraft:tnt"}}] run function main:happy_ghast/bombing
execute as @e[type=happy_ghast] at @s if score @s ghastBombingCD matches 40.. run team leave @s 
execute as @e[type=happy_ghast] at @s if score @s ghastBombingCD matches 40.. run effect clear @s glowing

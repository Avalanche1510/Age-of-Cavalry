execute as @n[distance=..8,type=item,nbt={Item:{id:"minecraft:tnt"}}] at @s store result score @n[type=happy_ghast,distance=..8] mX run data get entity @n[distance=..1,type=item,nbt={Item:{id:"minecraft:tnt"}}] Motion[0] 2500
execute as @n[distance=..8,type=item,nbt={Item:{id:"minecraft:tnt"}}] at @s store result score @n[type=happy_ghast,distance=..8] mY run data get entity @n[distance=..1,type=item,nbt={Item:{id:"minecraft:tnt"}}] Motion[1] 2500
execute as @n[distance=..8,type=item,nbt={Item:{id:"minecraft:tnt"}}] at @s store result score @n[type=happy_ghast,distance=..8] mZ run data get entity @n[distance=..1,type=item,nbt={Item:{id:"minecraft:tnt"}}] Motion[2] 2500
team join rest
execute as @n[distance=..8,type=item,nbt={Item:{id:"minecraft:tnt"}}] at @s run summon tnt ~ ~ ~ {fuse:50}
effect give @s glowing 4 255
playsound minecraft:entity.ghast.warn master @a[distance=..16] ~ ~ ~ 1.0 1.0 0.1
scoreboard players set @s ghastBombingCD 0
execute as @n[type=tnt,distance=..8] at @s run kill @n[distance=..1,type=item,nbt={Item:{id:"minecraft:tnt"}}] 
execute store result entity @n[type=tnt,distance=..8] Motion[0] double 0.001 run scoreboard players get @s mX
execute store result entity @n[type=tnt,distance=..8] Motion[1] double 0.001 run scoreboard players get @s mY
execute store result entity @n[type=tnt,distance=..8] Motion[2] double 0.001 run scoreboard players get @s mZ
execute as @e[type=!player,name=servant] at @s run playsound entity.enderman.teleport master @a[distance=..8] ~ ~ ~ 1 1 0.1
execute as @e[type=!player,name=servant] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 1 0.5 0.1 20 force
tp @e[type=!player,name=servant,type=!happy_ghast] @s
tp @e[name=servant,type=happy_ghast] ~ ~4 ~
execute as @e[name=servant,type=happy_ghast] run data merge entity @s {still_timeout:300}
experience add @s -3 levels
execute as @e[type=!player,name=servant] run experience add @a[level=7..,scores={IsUsingGoatHorn=1}] -100 points
execute as @e[type=!player,name=servant] at @s run scoreboard players add @n[level=..6,scores={IsUsingGoatHorn=1},limit=1] cost 1
execute as @a[level=..6,scores={IsUsingGoatHorn=1},limit=1] run tellraw @s {"text":"经验不足，代价转为生命！","color":"red"}
execute as @e[type=!player,name=servant] at @s run playsound entity.enderman.teleport master @a[distance=..8] ~ ~ ~ 1 1 0.1
execute as @e[type=!player,name=servant] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 1 0.5 0.05 20 force
scoreboard players set @s IsUsingGoatHorn 0
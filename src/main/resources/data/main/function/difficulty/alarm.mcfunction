execute as @n[type=armor_stand,tag=record] if score @s alarm matches 1.. run playsound block.bell.use ambient @a ~ ~ ~ 1 1 1
execute as @n[type=armor_stand,tag=record] if score @s alarm matches 1.. run scoreboard players remove @s alarm 1
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 0..199 run schedule function main:difficulty/alarm 50t
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 200..399 run schedule function main:difficulty/alarm 40t
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 400..599 run schedule function main:difficulty/alarm 30t
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 600..799 run schedule function main:difficulty/alarm 20t
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 800..999 run schedule function main:difficulty/alarm 10t
execute as @n[type=armor_stand,tag=record] if score @s turbulence matches 1000..1199 run schedule function main:difficulty/alarm 30t


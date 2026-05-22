execute if score @n[type=armor_stand,tag=record] trend_rate matches -2147483648..2147483647 run scoreboard players set @s trend_rate 0
execute as @n[type=armor_stand,tag=record] if score @s difficulty matches 1 store result score @s trend_rate run random value -1..9
execute as @n[type=armor_stand,tag=record] if score @s difficulty matches 2 store result score @s trend_rate run random value -3..7
execute as @n[type=armor_stand,tag=record] if score @s difficulty matches 3 store result score @s trend_rate run random value -5..5
execute as @n[type=armor_stand,tag=record] if score @s difficulty matches 4 store result score @s trend_rate run random value -7..3
execute as @n[type=armor_stand,tag=record] if score @s difficulty matches 5 store result score @s trend_rate run random value -9..1

# execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 0..199 run scoreboard players remove @s turbulence 40
# execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 200..399 run scoreboard players remove @s turbulence 30
# execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 400..599 run scoreboard players remove @s turbulence 20
# execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 600..799 run scoreboard players remove @s turbulence 10
# execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 800..999 run scoreboard players remove @s turbulence 5
# execute as @n[type=armor_stand,tag=record] if score @s halt matches 0 run execute if score @s turbulence matches 1000..1199 run scoreboard players add @s turbulence 10


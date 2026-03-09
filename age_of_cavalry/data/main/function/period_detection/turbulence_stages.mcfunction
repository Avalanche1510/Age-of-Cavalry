execute as @e[type=armor_stand,tag=record] store result bossbar world_turbulence value run scoreboard players get @s turbulence

execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 0..199 unless score @s difficulty matches 1 run function main:difficulty/warn1
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 200..399 unless score @s difficulty matches 2 run function main:difficulty/warn2
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 400..599 unless score @s difficulty matches 3 run function main:difficulty/warn3
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 600..799 unless score @s difficulty matches 4 run function main:difficulty/warn4
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 800..999 unless score @s difficulty matches 5 run function main:difficulty/warn5
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 1000..1199 unless score @s difficulty matches 6 run function main:difficulty/warn6





execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 0..199 run scoreboard players set @s difficulty 1
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 200..399 run scoreboard players set @s difficulty 2
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 400..599 run scoreboard players set @s difficulty 3
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 600..799 run scoreboard players set @s difficulty 4
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 800..999 run scoreboard players set @s difficulty 5
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 1000..1199 run scoreboard players set @s difficulty 6


execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 0..199 run bossbar set world_turbulence color green
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 200..399 run bossbar set world_turbulence color white
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 400..599 run bossbar set world_turbulence color white
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 600..799 run bossbar set world_turbulence color yellow
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 800..999 run bossbar set world_turbulence color yellow
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 1000..1199 run bossbar set world_turbulence color red


# 田园时代
# 边疆来信
# 风起云涌
# 山雨欲来
# 大厦将倾
# 战争前夜
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 0..199 run bossbar set world_turbulence name {"text":"田园时代","color":"green"}
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 200..399 run bossbar set world_turbulence name {"text":"边疆来信","color":"white"}
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 400..599 run bossbar set world_turbulence name {"text":"风起云涌","color":"white"}
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 600..799 run bossbar set world_turbulence name {"text":"山雨欲来","color":"yellow"}
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 800..999 run bossbar set world_turbulence name {"text":"大厦将倾","color":"red"}
execute as @e[type=armor_stand,tag=record] if score @s turbulence matches 1000..1199 run bossbar set world_turbulence name {"text":"战争前夜","color":"dark_red"}
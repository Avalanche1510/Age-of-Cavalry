execute as @e[type=minecraft:firework_rocket,nbt={FireworksItem:{components:{"minecraft:rarity":epic}}}] run data merge entity @s {FireworksItem: {id: "minecraft:firework_rocket", count: 3, components: {"minecraft:fireworks": {explosions: [{colors: [I; 11743532, 15435844, 14602026], shape: "small_ball", has_twinkle: 1b}, {colors: [I; 11743532, 15435844, 14602026], shape: "small_ball", has_twinkle: 1b}, {colors: [I; 11743532, 15435844, 14602026], shape: "small_ball", has_twinkle: 1b}, {colors: [I; 11743532, 15435844, 14602026], shape: "small_ball", has_twinkle: 1b}, {colors: [I; 11743532, 15435844, 14602026], shape: "small_ball", has_twinkle: 1b}, {colors: [I; 11743532, 15435844, 14602026], shape: "small_ball", has_twinkle: 1b}, {colors: [I; 11743532, 15435844, 14602026], shape: "small_ball", has_twinkle: 1b}], flight_duration: 1b}}}}
execute as @e[type=spectral_arrow,name="穿甲箭",tag=!clear,nbt={item:{components:{"minecraft:rarity":"uncommon"}}}] run data merge entity @s {crit:0b,damage:9.0d}

execute as @e[type=spectral_arrow,name="爆炸箭",tag=!clear,nbt={item:{components:{"minecraft:rarity":"epic"}}}] at @s run summon fireball ~ ~ ~ {Tags:["explosive"],ExplosionPower:2}
execute as @e[type=fireball,tag=explosive,tag=!momentum] at @s store result entity @s Motion[0] double 0.001 run data get entity @n[distance=..0.5,type=spectral_arrow,name="爆炸箭",tag=!clear,nbt={item:{components:{"minecraft:rarity":"epic"}}}] Motion[0] 1000
execute as @e[type=fireball,tag=explosive,tag=!momentum] at @s store result entity @s Motion[1] double 0.001 run data get entity @n[distance=..0.5,type=spectral_arrow,name="爆炸箭",tag=!clear,nbt={item:{components:{"minecraft:rarity":"epic"}}}] Motion[1] 1000
execute as @e[type=fireball,tag=explosive,tag=!momentum] at @s store result entity @s Motion[2] double 0.001 run data get entity @n[distance=..0.5,type=spectral_arrow,name="爆炸箭",tag=!clear,nbt={item:{components:{"minecraft:rarity":"epic"}}}] Motion[2] 1000
execute as @e[type=fireball,tag=explosive,tag=!momentum] at @s run kill @n[distance=..0.5,type=spectral_arrow,name="爆炸箭",tag=!clear,nbt={item:{components:{"minecraft:rarity":"epic"}}}]
execute as @e[type=fireball,tag=explosive,tag=!momentum] at @s run tag @s add momentum

execute as @e[type=spectral_arrow,name="穿甲箭",tag=!clear,nbt={item:{components:{"minecraft:rarity":"uncommon"}}}] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 0 2 force

# 混乱经验倍乘效果
execute as @e[type=experience_orb,tag=!multiplied] if score @n[type=armor_stand,tag=record] difficulty matches 1 store result entity @s Value short 1.5 run data get entity @s Value 1
execute as @e[type=experience_orb,tag=!multiplied] if score @n[type=armor_stand,tag=record] difficulty matches 2 store result entity @s Value short 2 run data get entity @s Value 1
execute as @e[type=experience_orb,tag=!multiplied] if score @n[type=armor_stand,tag=record] difficulty matches 3 store result entity @s Value short 3 run data get entity @s Value 1
execute as @e[type=experience_orb,tag=!multiplied] if score @n[type=armor_stand,tag=record] difficulty matches 4 store result entity @s Value short 4.5 run data get entity @s Value 1
execute as @e[type=experience_orb,tag=!multiplied] if score @n[type=armor_stand,tag=record] difficulty matches 5 store result entity @s Value short 6.5 run data get entity @s Value 1
execute as @e[type=experience_orb,tag=!multiplied] if score @n[type=armor_stand,tag=record] difficulty matches 6 store result entity @s Value short 9 run data get entity @s Value 1
execute as @e[type=experience_orb,tag=!multiplied] run tag @s add multiplied
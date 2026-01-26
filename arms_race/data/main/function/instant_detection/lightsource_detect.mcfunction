function main:dynamic_lightsource/remove
execute as @a[tag=need_light] at @s if items entity @s weapon.* minecraft:torch run function main:dynamic_lightsource/create
execute as @a[tag=need_light] at @s if items entity @s weapon.* minecraft:copper_torch run function main:dynamic_lightsource/create
execute as @a[tag=need_light] at @s if items entity @s weapon.* minecraft:soul_torch run function main:dynamic_lightsource/create
execute as @a[tag=need_light] at @s if items entity @s weapon.* minecraft:lava_bucket run function main:dynamic_lightsource/create
execute as @a[tag=need_light] at @s if items entity @s weapon.* minecraft:lantern run function main:dynamic_lightsource/create
execute as @a[tag=need_light] at @s if items entity @s weapon.* minecraft:soul_lantern run function main:dynamic_lightsource/create
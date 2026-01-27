# 检测是否存在可以升级格挡的剑和附近的材料
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:iron_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:iron_ingot"}}] run function main:refinement/iron_sword
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:golden_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:gold_ingot"}}] run function main:refinement/golden_sword
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:copper_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:copper_ingot"}}] run function main:refinement/copper_sword
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:stone_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:cobblestone"}}] run function main:refinement/stone_sword
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:wooden_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:stick"}}] run function main:refinement/wooden_sword
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:diamond_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:diamond"}}] run function main:refinement/diamond_sword
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:netherite_scrap"}}] run function main:refinement/netherite_sword
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:iron_sword"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:nether_star"}}] run function main:refinement/easter

execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:compass"}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,id:"minecraft:spectral_arrow"}}] run function main:refinement/hunter_compass
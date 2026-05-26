
execute as @a at @s if dimension minecraft:overworld if items entity @s weapon.mainhand fishing_rod[enchantments={binding_curse:1},damage=2,rarity=epic] unless score @s fishing_rod_usage matches 0 run function main:orbital_cannon/trigger_nuke
execute as @a at @s if dimension minecraft:overworld if items entity @s weapon.offhand fishing_rod[enchantments={binding_curse:1},damage=2,rarity=epic] unless score @s fishing_rod_usage matches 0 run function main:orbital_cannon/trigger_nuke
execute as @a at @s run scoreboard players set @s fishing_rod_usage 0
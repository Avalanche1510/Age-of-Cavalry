execute if items entity @s weapon.offhand fishing_rod[enchantments={binding_curse:1},damage=2,rarity=epic] run item replace entity @s weapon.offhand with air
execute if items entity @s weapon.mainhand fishing_rod[enchantments={binding_curse:1},damage=2,rarity=epic] run item replace entity @s weapon.mainhand with air
playsound minecraft:entity.item.break
scoreboard players set @s fishing_rod_usage 0
execute as @n[tag=record,type=armor_stand,] run scoreboard players add @s turbulence 100
tag @s add nuke
schedule function main:orbital_cannon/nuke 10t append

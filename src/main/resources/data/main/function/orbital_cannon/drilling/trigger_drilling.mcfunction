execute if items entity @s weapon.offhand fishing_rod[enchantments={binding_curse:1},damage=2,rarity=rare] run item replace entity @s weapon.offhand with air
execute if items entity @s weapon.mainhand fishing_rod[enchantments={binding_curse:1},damage=2,rarity=rare] run item replace entity @s weapon.mainhand with air
playsound minecraft:entity.item.break
scoreboard players set @s fishing_rod_usage 0
tag @s add drill
schedule function main:orbital_cannon/drilling/drill 3t append

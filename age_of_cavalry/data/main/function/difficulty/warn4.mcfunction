execute as @n[type=armor_stand,tag=record] run scoreboard players set @s alarm 4
function main:difficulty/alarm
tellraw @a {text:"山雨欲来，人心惶惶...",color:"yellow",bold:true}
tellraw @a {text:"暴力与冲突并未如预期般消失，而是缓慢而令人担忧地降临。",color:"yellow"}
tellraw @a {text:"尽管人们大声斥责流窜的谣言，他们心底却无论如何都无法不去想那个更糟的未来...",color:"yellow"}
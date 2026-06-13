execute as @n[type=armor_stand,tag=record] run scoreboard players set @s alarm 1
function main:difficulty/alarm
tellraw @a {text:"田园时代，即为当世...",color:"green",bold:true}
tellraw @a {text:"冲突与纷争不过是书中的故事；而当下只是平凡普通的一天。",color:"green"}
tellraw @a {text:"这里没有远方的来客，这里只有平静的生活。",color:"green"}
execute as @n[type=armor_stand,tag=record] run scoreboard players set @s alarm 5
function main:difficulty/alarm
tellraw @a {text:"危如累卵，大厦将倾...",color:"red",bold:true}
tellraw @a {text:"局势崩溃之迅速超出了任何人的控制，但还未到不可挽回的地步。",color:"#ffae00"}
tellraw @a [{text:"人们开始意识到，所有人必须立刻",color:"#ffae00"},{text:"限制暴力的使用",color:"red"},{text:"，否则局势即将越过",color:"#ffae00"},{text:"某个灾难性的临界点。",color:"red",bold:true},]
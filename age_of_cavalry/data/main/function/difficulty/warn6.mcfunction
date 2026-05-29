execute as @n[type=armor_stand,tag=record] run scoreboard players set @s alarm 6
function main:difficulty/alarm
tellraw @a {text:"为时已晚。",color:"dark_red",bold:true}
tellraw @a [{text:"种族与种族之间产生的地缘与资源局部冲突最终演变成了",color:"#ff6600"},{text:"无可挽回的全局灾难",color:"dark_red",bold:true},{text:"。",color:"dark_red"}]
tellraw @a [{text:"各地不断传来令人不安的简报，各族野外的兵员被",color:"#ff6600"},{text:"紧急召回",color:"dark_red",bold:true},{text:"；",color:"dark_red"}]
tellraw @a [{text:"在我们尝试缓解局势之前，几乎所有的势力都已经默契地开始",color:"#ff6600"},{text:"无限制扩军",color:"dark_red",bold:true},{text:"。",color:"dark_red"}]
tellraw @a [{text:"如果说现在我们还需要做什么，那就是立刻开始",color:"dark_red"},{text:"备战",color:"dark_red",bold:true},{text:"。",color:"dark_red"}]
tellraw @a {text:"避免战争什么的已经无所谓了，战争就在我们眼前！",color:"dark_red",bold:true}
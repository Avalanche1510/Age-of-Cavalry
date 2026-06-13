function main:difficulty/alarm
tellraw @a {text:"开始了。",color:"dark_red",bold:true}
tellraw @a [{text:"猪灵部落，亡灵联邦，灾厄之庭于今日正式向彼此宣战。村庄防卫军亦已进入战备状态。",color:"red"}]
tellraw @a [{text:"从地狱到主世界，从大陆到海洋，从地表到天空。",color:"red"},{text:"战争之轮必将碾碎一切。",color:"dark_red",bold:true}]
tellraw @a [{text:"除非",color:"red",bold:false},{text:"蒙受沉重的损失",color:"dark_red",bold:true},{text:"，任何势力都不可能率先停战。",color:"red",bold:false}]
title @a title {"text":"战争爆发","color":"dark_red",bold:true}
playsound item.goat_horn.sound.2 master @a ~ ~ ~ 1 1 1
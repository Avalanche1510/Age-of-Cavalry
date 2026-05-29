function main:difficulty/alarm
tellraw @a {text:"开始了。",color:"dark_red",bold:true}
tellraw @a [{text:"猪灵部落，亡灵联邦，灾厄帝国于今日正式向彼此宣战。",color:"dark_red"}]
tellraw @a [{text:"战争之轮已然开动。除非遭受沉重的损失，任何势力都不可能率先停战。",color:"dark_red"}]
title @a title {"text":"战争爆发","color":"dark_red",bold:true}
playsound item.goat_horn.sound.2 master @a ~ ~ ~ 1 1 1
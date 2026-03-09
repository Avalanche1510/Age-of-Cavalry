execute as @n[type=armor_stand,tag=record] run scoreboard players set @s alarm 2
function main:difficulty/alarm
tellraw @a {text:"远疆来信，风扰青萍...",color:"white",bold:true}
tellraw @a {text:"边疆的风声似乎带来了一些不谐，但人们依然过着平静的生活。",color:"white"}
tellraw @a {text:"也许这只是平静生活中的一个小插曲，亦或是某种变化将要到来的前兆...",color:"white"}
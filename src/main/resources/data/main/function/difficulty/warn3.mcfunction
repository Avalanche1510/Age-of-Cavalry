execute as @n[type=armor_stand,tag=record] run scoreboard players set @s alarm 3
function main:difficulty/alarm
tellraw @a {text:"风起云涌，暗潮流转...",color:"white",bold:true}
tellraw @a {text:"纷争不再是只人们口中的故事，而是正在冲击这片土地的现实。",color:"gray"}
tellraw @a {text:"冲突与变革已经发生，风险与机遇同时到来...",color:"gray"}
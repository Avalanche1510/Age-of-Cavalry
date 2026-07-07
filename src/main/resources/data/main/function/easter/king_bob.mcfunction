summon zombie ~ ~ ~ {CustomName:"Bob",Tags:["soldier","Bob"], equipment:{head:{id:"netherite_helmet",components:{enchantments:{protection:4}}},chest:{id:"netherite_chestplate",components:{enchantments:{protection:4}}},legs:{id:"netherite_leggings",components:{enchantments:{protection:4}}},feet:{id:"netherite_boots",components:{enchantments:{protection:4}}},mainhand:{id:"netherite_sword",components:{enchantments:{sharpness:5}}},offhand:{id:"totem_of_undying",count:64}}}
execute as @n[tag=Bob] run attribute @s minecraft:max_health modifier add max_health 48 add_value
execute as @n[tag=Bob] run attribute @s minecraft:movement_speed modifier add movement_speed 0.16 add_value
execute as @n[tag=Bob] run attribute @s minecraft:attack_damage modifier add attack_damage 4 add_value

execute as @n[tag=Bob] run attribute @s minecraft:attack_damage modifier add attack_damage 0.6 add_multiplied_total
execute as @n[tag=Bob] run attribute @s minecraft:attack_knockback modifier add attack_knockback 0.32 add_multiplied_total

execute as @n[tag=Bob] run attribute @s minecraft:movement_speed modifier add movement_speed 0.18 add_multiplied_total
execute as @n[tag=Bob] run attribute @s minecraft:armor modifier add armor 0.32 add_multiplied_total

execute as @n[tag=Bob] run attribute @s minecraft:max_health modifier add max_health 0.32 add_multiplied_total
execute as @n[tag=Bob] run attribute @s minecraft:knockback_resistance modifier add knockback_resistance 0.18 add_value
execute as @n[tag=Bob] run attribute @s minecraft:scale modifier add scale 0.24 add_multiplied_total

execute as @n[tag=Bob] run data merge entity @s {Health:1000.0f}
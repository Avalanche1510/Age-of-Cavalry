# 炮弩手
execute if entity @s[tag=firework_pillager] run data modify entity @s equipment.head set value {id:"minecraft:iron_helmet",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=firework_pillager] run data modify entity @s equipment.chest set value {id:"minecraft:iron_chestplate",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=firework_pillager] run data modify entity @s equipment.legs set value {id:"minecraft:iron_leggings",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=firework_pillager] run data modify entity @s equipment.feet set value {id:"minecraft:iron_boots",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=firework_pillager] run data modify entity @s equipment.mainhand set value {id:"minecraft:crossbow",components:{"minecraft:lore":[{"text":"反改装","color":"red","bold":true}],"minecraft:custom_name":"炮弩","minecraft:rarity":rare,"minecraft:repair_cost":99999,"minecraft:enchantments":{"minecraft:quick_charge":2,"minecraft:unbreaking":3,"minecraft:punch":2,"minecraft:flame":1,"minecraft:power":5,"minecraft:piercing":5}}}
execute if entity @s[tag=firework_pillager] run data modify entity @s equipment.offhand set value {id:"minecraft:firework_rocket",count:8b,components:{"minecraft:rarity":epic,"minecraft:custom_name":"弩炮散弹"}}
execute if entity @s[tag=firework_pillager] run effect give @s regeneration infinite 1
execute if entity @s[tag=firework_pillager] on vehicle run effect give @s regeneration infinite 1

# 霰弩手
execute if entity @s[tag=grapeshot_pillager] run data modify entity @s equipment.head set value {id:"minecraft:iron_helmet",components:{"minecraft:enchantments":{"minecraft:projectile_protection":2,"minecraft:protection":2,"minecraft:unbreaking":3}}}
execute if entity @s[tag=grapeshot_pillager] run data modify entity @s equipment.chest set value {id:"minecraft:iron_chestplate",components:{"minecraft:enchantments":{"minecraft:projectile_protection":2,"minecraft:protection":2,"minecraft:unbreaking":3}}}
execute if entity @s[tag=grapeshot_pillager] run data modify entity @s equipment.mainhand set value {id:"minecraft:crossbow",components:{"minecraft:lore":[{"text":"反改装","color":"red","bold":true}],"minecraft:custom_name":"霰弩","minecraft:rarity":rare,"minecraft:repair_cost":99999,"minecraft:enchantments":{"minecraft:quick_charge":4,"minecraft:unbreaking":3,"minecraft:power":2,"minecraft:multishot":1,"minecraft:piercing":2}}}
execute if entity @s[tag=grapeshot_pillager] run data modify entity @s equipment.offhand set value {id:"minecraft:arrow",count:64b}

# 重弩手
execute if entity @s[tag=apocalypse_pillager] run data modify entity @s equipment.head set value {id:"minecraft:copper_helmet",components:{"minecraft:enchantments":{"minecraft:projectile_protection":4,"minecraft:protection":1,"minecraft:unbreaking":3}}}
execute if entity @s[tag=apocalypse_pillager] run data modify entity @s equipment.chest set value {id:"minecraft:leather_chestplate",components:{"minecraft:enchantments":{"minecraft:projectile_protection":4,"minecraft:protection":1,"minecraft:unbreaking":3}}}
execute if entity @s[tag=apocalypse_pillager] run data modify entity @s equipment.mainhand set value {id:"minecraft:crossbow",components:{"minecraft:lore":[{"text":"反改装","color":"red","bold":true}],"minecraft:custom_name":"重弩","minecraft:rarity":rare,"minecraft:repair_cost":99999,"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:power":5,"minecraft:piercing":5,"minecraft:punch":3}}}
execute if entity @s[tag=apocalypse_pillager] run data modify entity @s equipment.offhand set value {id:"minecraft:spectral_arrow",count:16b,components:{"minecraft:rarity":"uncommon","minecraft:custom_name":"穿甲箭"}}

# 卫道武士
execute if entity @s[tag=vindicator] run data modify entity @s equipment.chest set value {id:"minecraft:diamond_chestplate",components:{"minecraft:enchantments":{"minecraft:protection":3,"minecraft:projectile_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=vindicator] run data modify entity @s equipment.feet set value {id:"minecraft:diamond_boots",components:{"minecraft:enchantments":{"minecraft:blast_protection":3,"minecraft:projectile_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=vindicator] run data modify entity @s equipment.mainhand set value {id:"minecraft:diamond_axe",components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:sharpness":5}}}

# 狂热教士
execute if entity @s[tag=zeolot] run data modify entity @s equipment.chest set value {id:"minecraft:diamond_chestplate",components:{"minecraft:enchantments":{"minecraft:protection":4,"minecraft:projectile_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=zeolot] run data modify entity @s equipment.mainhand set value {id:"minecraft:copper_sword",components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:smite":5,"minecraft:knockback":3,"minecraft:fire_aspect":3}}}
execute if entity @s[tag=zeolot] run data modify entity @s equipment.offhand set value {id:"minecraft:copper_sword",components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:smite":5,"minecraft:knockback":3,"minecraft:fire_aspect":3}}}

# 瘟疫巫医
execute if entity @s[tag=plague_witch] run data modify entity @s equipment.chest set value {id:"minecraft:chainmail_chestplate",components:{"minecraft:enchantments":{"minecraft:protection":2,"minecraft:unbreaking":3}}}
execute if entity @s[tag=plague_witch] run data modify entity @s equipment.legs set value {id:"minecraft:chainmail_leggings",components:{"minecraft:enchantments":{"minecraft:protection":2,"minecraft:unbreaking":3}}}
execute if entity @s[tag=plague_witch] run data modify entity @s equipment.feet set value {id:"minecraft:chainmail_boots",components:{"minecraft:enchantments":{"minecraft:protection":2,"minecraft:unbreaking":3}}}
execute if entity @s[tag=plague_witch] run data modify entity @s equipment.mainhand set value {id:"minecraft:honey_bottle"}

# 灾厄主教
execute if entity @s[tag=omen_evoker] run data modify entity @s equipment.chest set value {id:"minecraft:chainmail_chestplate",components:{"minecraft:enchantments":{"minecraft:protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=omen_evoker] run data modify entity @s equipment.legs set value {id:"minecraft:chainmail_leggings",components:{"minecraft:enchantments":{"minecraft:protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=omen_evoker] run data modify entity @s equipment.feet set value {id:"minecraft:chainmail_boots",components:{"minecraft:enchantments":{"minecraft:protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=omen_evoker] run data modify entity @s equipment.mainhand set value {id:"minecraft:totem_of_undying"}
execute if entity @s[tag=omen_evoker] run data modify entity @s equipment.offhand set value {id:"minecraft:totem_of_undying"}

# 攻城者
execute if entity @s[tag=besieger] run data modify entity @s equipment.head set value {id:"minecraft:tnt",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=besieger] run data modify entity @s equipment.chest set value {id:"minecraft:iron_chestplate",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=besieger] run data modify entity @s equipment.legs set value {id:"minecraft:iron_leggings",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=besieger] run data modify entity @s equipment.feet set value {id:"minecraft:iron_boots",components:{"minecraft:enchantments":{"minecraft:blast_protection":4,"minecraft:unbreaking":3}}}
execute if entity @s[tag=besieger] run data modify entity @s equipment.mainhand set value {id:"minecraft:crossbow",components:{"minecraft:enchantments":{"minecraft:quick_charge":2}}}
execute if entity @s[tag=besieger] run data modify entity @s equipment.offhand set value {id:"minecraft:spectral_arrow",count:16b,components:{"minecraft:rarity":"epic","minecraft:custom_name":"爆炸箭"}}

#data merge entity @s {equipment:{chest:{components:{"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:snout"}}}}}
#data merge entity @s {equipment:{chest:{components:{"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:tide"}}}}}
data merge entity @s {equipment:{chest:{components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:bolt"}}}}}
tag @s add has_items
execute if entity @s[tag=omen_evoker] run function main:squad/flags
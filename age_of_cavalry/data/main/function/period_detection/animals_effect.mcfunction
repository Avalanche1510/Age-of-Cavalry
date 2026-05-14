# 更舒服的坐骑速度/属性

execute as @e[type=horse] run effect give @s regeneration 3 0


execute as @e[type=camel] run effect give @s regeneration 3 0


effect give @e[type=happy_ghast] regeneration 3 0

# 铁傀儡视线拓宽
execute as @e[type=iron_golem,tag=!larger_follow_range] run attribute @s minecraft:follow_range base set 32
execute as @e[type=iron_golem,tag=!larger_follow_range] run tag @s add larger_follow_range 
execute as @a[tag=near-death] if score @s playerHealth matches 0..8 run effect give @s minecraft:resistance 2 3 true
execute as @a[tag=near-death] if score @s playerHealth matches 9..16 run effect give @s minecraft:resistance 2 2 true
execute as @a[tag=near-death] if score @s playerHealth matches 17..24 run effect give @s minecraft:resistance 2 1 true
execute as @a[tag=near-death] if score @s playerHealth matches 25..32 run effect give @s minecraft:resistance 2 0 true
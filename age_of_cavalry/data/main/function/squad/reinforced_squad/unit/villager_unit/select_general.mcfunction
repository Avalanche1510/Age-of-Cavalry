execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..25 run function main:squad/reinforced_squad/unit/villager_unit/crossbow_guard
execute as @s if score @s squadNum matches 26..40 run function main:squad/reinforced_squad/unit/villager_unit/axe_guard
execute as @s if score @s squadNum matches 41..75 run function main:squad/reinforced_squad/unit/villager_unit/shield_guard
execute as @s if score @s squadNum matches 76..85 run function main:squad/reinforced_squad/unit/villager_unit/tank_guard
execute as @s if score @s squadNum matches 85..90 run function main:squad/reinforced_squad/unit/villager_unit/iron_golem
execute as @s store result score @s squadNum run random value 1..100
execute as @s if score @s squadNum matches 1..45 run function main:squad/reinforced_squad/unit/illager_unit/pillager
execute as @s if score @s squadNum matches 46..70 run function main:squad/reinforced_squad/unit/illager_unit/vindicator
execute as @s if score @s squadNum matches 71..80 run function main:squad/reinforced_squad/unit/illager_unit/witch
execute as @s if score @s squadNum matches 81..90 run function main:squad/reinforced_squad/unit/illager_unit/evoker
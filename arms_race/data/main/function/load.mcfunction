# 加载提示
title @a title {"text":"Arms Race","color":"green","italic": 1b}
say 已加载 军备竞赛v1.0 数据包！
playsound entity.player.levelup master @a ~ ~ ~ 1 1 1

# 初始化计分板
scoreboard objectives add period dummy "Period"
scoreboard objectives add longPeriod dummy "Long Period"
scoreboard objectives add shortPeriod dummy "Short Period"
scoreboard objectives add isrefined dummy "Is Refined?"
scoreboard objectives add ghastBombingCD dummy "ghast Bombing CD"
scoreboard objectives add mX dummy "motion X"
scoreboard objectives add mY dummy "motion Y"
scoreboard objectives add mZ dummy "motion Z"
scoreboard objectives add ownerX dummy "owner X"
scoreboard objectives add ownerY dummy "owner Y"
scoreboard objectives add ownerZ dummy "owner Z"

scoreboard objectives add difficulty dummy "Difficulty"
scoreboard objectives add isGifted dummy "Is Gifted?"
scoreboard objectives add skillRandom dummy "Skill Random"
scoreboard objectives add itemRandom dummy "Item Random"
scoreboard objectives add skillCD dummy "Skill CD"
scoreboard objectives add snowballCD dummy "Snowball CD"
scoreboard objectives add guardCD dummy "Guard CD"
scoreboard objectives add splitCD dummy "Split CD"
scoreboard objectives add lifeCD dummy "Life CD"
scoreboard objectives add health dummy "Health"
scoreboard objectives add playerHealth health "Player Health"
scoreboard objectives add ground dummy "Ground"
scoreboard objectives add height dummy "height"
scoreboard objectives add squadNum dummy "squad Num"
scoreboard objectives add MinPeriod dummy "Minute Period"
scoreboard objectives add AlreadySpawned dummy "Already Spawned"

execute unless entity @e[type=armor_stand,tag=record] run say 数据包尚未完成手动初始化，部分功能可能无法生效！

team add rest "CD team"
team modify rest color aqua

team add villager_party "villager party"
team modify villager_party color dark_gray
team add undead-arthropod_party "undead & arthropod party"
team modify undead-arthropod_party color dark_green
team add illager_party "illager party"
team modify illager_party color dark_blue
team add piglin_party "piglin party"
team modify piglin_party color gold
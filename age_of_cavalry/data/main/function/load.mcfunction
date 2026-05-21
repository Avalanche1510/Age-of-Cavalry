# 加载提示
title @a title {"text":"Age of Cavalry","color":"green","italic": 1b}
tellraw @a {"text":"已加载 骑兵时代 v1.0 数据包！","color":"green"}
tellraw @a {"text":"作者: Avalanche1510","color":"yellow"}
tellraw @a {"text":"需要调整怪物血量显示方式请按 I 键","color":"yellow"}
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1

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
scoreboard objectives add maxHealth dummy "max health"
scoreboard objectives add playerHealth health "Player Health"
scoreboard objectives add ground dummy "Ground"
scoreboard objectives add height dummy "height"
scoreboard objectives add squadNum dummy "squad Num"
scoreboard objectives add MinPeriod dummy "Minute Period"
scoreboard objectives add 5MinPeriod dummy "5 Minute Period"
scoreboard objectives add AlreadySpawned dummy "Already Spawned"
scoreboard objectives add Isquad dummy "illager squad"
scoreboard objectives add IsCavalry dummy "Is Cavalry"
scoreboard objectives add cost dummy "Cost"
scoreboard objectives add RidePeriod dummy "Ride Period"
scoreboard objectives add PotionRandom dummy "Random Potion"
scoreboard objectives add GuardRandom dummy "Guard Random"
scoreboard objectives add IsUsingGoatHorn minecraft.used:minecraft.goat_horn "Using goat horn"
scoreboard objectives add row dummy "row"
scoreboard objectives add col dummy "column"
scoreboard objectives add c_row dummy "current row"
scoreboard objectives add c_col dummy "current column"
scoreboard objectives add SoldierType dummy "soldier type"
scoreboard objectives add track dummy "success tracking?"
scoreboard objectives add TrackCD dummy "tracking CD"
scoreboard objectives add squadNum dummy "random squad"
scoreboard objectives add turbulence dummy "turbulence level"
scoreboard objectives add alarm dummy "alarm"
scoreboard objectives add last_stage dummy "last stage"
scoreboard objectives add halt dummy "halt"
scoreboard objectives add last_region_type dummy "last region type"
scoreboard objectives add region_random dummy "region random"
scoreboard objectives add region_type dummy "region type"
scoreboard objectives add region_id dummy "region id"
scoreboard objectives add last_region_id dummy "last region id"
scoreboard objectives add villager_count dummy "villager count"
scoreboard objectives add region_y dummy "region height"
scoreboard objectives add fire_ball_gravity dummy "fire ball gravity"
scoreboard objectives add daytime dummy "day time"
 
scoreboard objectives add illager_count dummy "illager count"
scoreboard objectives add undead_count dummy "undead count"
scoreboard objectives add golem_count dummy "golem count"

scoreboard objectives add Mxp teamkill.gold "multiplied xp"

scoreboard objectives add undead_tension dummy "undead tension"
scoreboard objectives add illager_tension dummy "illager tension"
scoreboard objectives add piglin_tension dummy "piglin tension"

scoreboard objectives add reputation_in_piglin dummy "reputation in piglin"
scoreboard objectives add reputation_in_undead dummy "reputation in undead"
scoreboard objectives add reputation_in_illager dummy "reputation in illager"
scoreboard objectives add reputation_in_villager dummy "reputation in villager"

execute unless entity @n[type=armor_stand,tag=record] run tellraw @a {"text":"数据包尚未完成手动初始化。","color":"red"}
execute unless entity @n[type=armor_stand,tag=record] run tellraw @a {"text":"请在创造模式下输入 function main:initiate/create_bot 以完成初始化。","color":"yellow"}
tellraw @a {"text":"可以创造模式下输入 function main:initiate/kill_bot 以解除，随后重新初始化。","color":"yellow"}
execute unless entity @n[type=armor_stand,tag=record] run tellraw @a {"text":"这条提示可能由于单人模式下，重新进入世界时，处于非主世界的维度，而意外触发。","color":"white"}
execute unless entity @n[type=armor_stand,tag=record] run tellraw @a {"text":"因此请确定真的没有初始化时再重新初始化！","color":"white"}


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


# give @a written_book[minecraft:written_book_content={pages: [{raw: "    SpearCraft服务器\n          启蒙之书\n-------------------\n目录：\n    1. 世界简史\n    2. 如何寻新"}, {raw: " ------世界简史------ \n第XXI纪末期，XI周期。\n纷争与变革之年，\n青铜与长矛之年，\n空气与火药之年，\n羽箭与战马之年，\n众帝国形成之年...\n\n大地上古老的已死之灵与节肢们结成同盟，\n四方游掠者们精进了技术，\n沉入地心多年的猪灵逐渐适应了诅咒..."}, {raw: "即便是永恒不变的村庄也为之改变，只求生存。村民将藏于钢铁与冰雪之下。\n\n变革，竞争。战争。\n\n连玩家也不能幸免。\n也许战争也能成为一种新的维生方式？而非千篇一律地膜拜机械。\n\n无人知晓。\n\n此纪元亦是实验之纪元。"}, {raw: " ------如何寻新------\n\n前往村庄，寻找一位没有羊驼的流浪商人。\n\n如不幸未能找到，丢给普通村民一块蓝冰亦可。\n\n另，给任意书本命名为启蒙之书，\n皆可以将其替换为此书。"}], resolved: 1b, title: {raw: "启蒙之书"}, author: "Avalanche1510"}] 1
team join undead-arthropod_party @e[type=#undead,type=!wither,type=!zombie_horse,type=!skeleton_horse,type=!camel_husk]
team join undead-arthropod_party @e[type=#arthropod,type=!bee,type=!endermite,type=!silverfish]
execute as @e[team=undead-arthropod_party] unless data entity @s PmbFaction run pmb faction member set undead_federation @s

team join illager_party @e[type=#illager]
team join illager_party @e[type=witch]
team join illager_party @e[type=ravager]
execute as @e[team=illager_party] unless data entity @s PmbFaction run pmb faction member set illager_empire @s

team join piglin_party @e[type=piglin]
team join piglin_party @e[type=blaze]
team join piglin_party @e[type=hoglin]
team join piglin_party @e[type=piglin_brute]
execute as @e[team=piglin_party] unless data entity @s PmbFaction run pmb faction member set piglin_clans @s

team join villager_party @e[type=villager]
team join villager_party @e[type=wandering_trader]
team join villager_party @e[type=guardvillagers:guard]
team join villager_party @e[type=iron_golem]
team join villager_party @e[type=snow_golem]

execute as @e[team=villager_party,type=!villager,type=!wandering_trader] unless data entity @s PmbFaction run pmb faction member set villager_guardforce @s
execute as @e[type=villager] unless data entity @s PmbFaction run pmb faction member set villager_civilian @s
execute as @e[type=wandering_trader] unless data entity @s PmbFaction run pmb faction member set villager_civilian @s

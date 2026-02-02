# This project is still in early stage of development!
# Age-of-Cavalry
A relatively lightweight, vanilla-like modpacks in the lastest version of minecraft **1.21.11**. It is designed to provide the **BEST VANILLA EXPERIENCE** (in my own opinion). The core datapack **age_of_cavalry** improves many **disappointing vanilla features** and try to utilize more unpopular and mediocre items to create an interconnected mechanism for better playability. 

 * Both players and mobs can get **more resources** to arm themselves, and hence the survival became more strategic and challenging. Those *unpopular items* now have a chance to **revive**.
 * Mobs form **3 main alliances**, and they are automatically *hostile* to each other now. Players are no longer fighting alone.
 * Not only the players can have much more **practical**, **enhanced** mounts like camels, horses, and happy ghast, but mobs can also have *various new cavalry units*. The combat mechanism of vanilla Minecraft will undergo a **drastic reform**!

## How to use
 * Datapacks **age_of_cavalry**, **special_loot_table**, and **special_recipe** MUST be enabled *at the same time*
 * Mod **Terralith** are *strongly reconmmended*, while doesn't affect the core function of datapack **age_of_cavalry** if not installed
 * A *modpack in 1.21.11* is provided as recommendation. The compatibility with extra mods or datapacks has not yet been tested.

## Essential Dependencies
1. java edition minecraft, 1.21.11 (not compatible with earlier version, but possibly for later version)
2. other 2 datapacks **special_loot_table** & **special_recipe**

## Strongly-Recommended Dependencies
1. **fabric & fabric api**
2. mod **Terralith**

## Non-Essential Dependencies (only count the core mod, dependent mods(e.g. sodium) are not included)
1. first-person animation mod **Hold My Items**(recommended) / **Locomotion**（only for combat）
2. mob & creatures animation mod **Better Animations**

---
---

## About the datapacks
### functions added:
1. any players with tag "need_light" can have moving light source implemented by command(has some bug with fluids)
2. waited for completion...

### recipes added:
1. name tag
2. smithing template
3. heavy core
4. enchanted golden apple
5. copper horse armor
6. golden horse armor
7. iron horse armor
8. diamond horse armor

### loot tables added:
* "lumberjack" for collector mobs in overworld and nether
     * drop wood and saplings.
* "miner" for collector mobs in overworld and nether
     * drop raw minerals.
* "farmer" for collector mobs in overworld and nether
     * drop food.
* "undead" for all undead&anthropod party mobs except wither skeleton and zombified piglin
     * can only drop emerald.
* "nether" for all piglin party mobs and wither skeleton and zombified piglin
     * can drop gold nugget, gold block and even netherite scrap.
* "illager" for all illager party mobs
     * can drop emerald and diamond. Evokers can also drop totem of undying(they should!).
* "creeper" for all creeper
     * can drop much more gun powder, or even TNT!
* "enderman" for all enderman
     * can drop much more ender pearl.
* "blaze" for all blaze
     * can drop much more ender blaze_rod.
* "breeze" for all breeze
     * can drop much more ender breeze_rod.

### features added:
1. item upgrading:
   * generally, players can drop some of their items together on the ground to upgrade.
   * All **swords** can be upgraded to have ability to *block the attack*, while cost much damage to itself. Compared with shields, they can be *lifted faster* while have a *limit of harm immunity* related to their base atk. Apart from that, players can use their offhand in various ways other than simply lifting a boring shield.
        * wooden sword + stick
        * golden sword + gold ingot
        * copper sword + copper ingot
        * stone sword + cobblestone
        * iron sword + iron ingot
        * diamond sword + diamond
        * netherite sword + netherite_scrap
        * ??? sword + nether star
   * Also, the players can upgrade their compass to detect which team the mobs belong to. This can be seen from their color.
        * compass + spectral arrow
   * Now, players can upgrade normal goat horn to **assembly horn**. It can teleport your horse, happy ghast or dogs(any entities named 'servant', except for players) from *any dimension*, *any where* to your current position, as long as they are **loaded**(so you need to build a simple ender pearl loader to maintain their loading).
   * However, players need to pay experience as cost. The basic initiation cost are *3 levels*, and each entities being *recruited* will cost you extra *100 points experience*. If you paid 3 levels and run out of experience, your **servant** will still be teleported, but each of them will cost you **1 HEART(2 DAMAGE)**! 
        * goat horn + ender pearl
2. experience system reform:
   * Now, **EXPERIENCE** indeed means **POWER**!
   * From level 0 ~ 30, player's base health, movement speed, base damage will gradually increase in order to adapt to **increasingly fierce battle**! After level 30, players can have an ultimate upgrade on their attack speed.
   * Under maximum circumstances, players will have +100% base health, +30% movement speed, +3 base atk, and +24% attack speed!
   * By the way, players' basic attributes might drop if their experience level goes down!
3. mounts modification:
   * 
   * Attributes Modification:
       * Zombie horse has 120% speed, 20 additional health.
       * Skeleton horse has 180% speed. (They cannot easily regenerate!)
       * Horse has 160% speed and effect regeneration I.
       * Camel has 140% speed and 8 additional health, and effect regeneration I.
       * Camel husk has 120% speed, 16 additional health.
       * Happy Ghast has 40 addtional health, and 180% flying speed.
   * Functions Modification:
       * **Now, all the mounts that can be ridden by players(except for pigs) can BREAK LEAVES! Forests are not obstacles now!**
       * Happy Ghast looks like a *gigantic balloon*, so it should be able to **be blown by wind charge**. If no one is standing or sitting on a happy ghast, it can achieve instantaneous rapid movement by using wind charge close to it. The recommended usage is to sit on a pig on a boat tied to a happy ghast and throw the wind charge to the direction you want to move.
       * **PEACE LOVING HAPPY GHAST can replace a TNT ITEM being dropped nearby by a TNT ENTITY each 2 SECONDS. BOMBARDMENT!**
       * To allow players sitting on the happy ghast to easily go down for combat, **players nearby will have slow falling** effect.
       * Zombie horse, skeleton horse, camel husk, cave spider and spider, hoglin and ravager can be automatically *ridden by the suitable mobs nearby* now! *More natural mob knights!*

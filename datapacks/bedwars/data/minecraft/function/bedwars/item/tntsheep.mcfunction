##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
summon minecraft:sheep ~ ~ ~ {Tags:["bw.tntsheep","bw.tntsheep.new"],CustomName:'["\\u00a7c\\u00a7lTNT SHEEP"]',CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Sheared:false,DeathLootTable:"",Color:14b,attributes:[{base:1d,id:"generic.max_health"},{base:1d,id:"generic.knockback_resistance"},{base:0d,id:"generic.movement_speed"},{base:1d,id:"generic.follow_range"},{base:0d,id:"generic.attack_damage"},{base:1d,id:"generic.attack_speed"},{base:1d,id:"generic.armor"},{base:1d,id:"generic.armor_toughness"}]}
scoreboard players set @e[tag=bw.tntsheep.new] board 6
tag @e[tag=bw.tntsheep.new] remove bw.tntsheep.new
playsound entity.tnt.primed block @a ~ ~ ~ 5 1 1
kill @s

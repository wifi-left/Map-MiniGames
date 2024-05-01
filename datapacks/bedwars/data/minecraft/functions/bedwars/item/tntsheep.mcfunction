##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
summon minecraft:sheep ~ ~ ~ {Tags:["bw.tntsheep","bw.tntsheep.new"],CustomName:'["\\u00a7c\\u00a7lTNT SHEEP"]',CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Attributes:[{Base:1d,Name:"generic.max_health"},{Base:1d,Name:"generic.knockback_resistance"},{Base:0d,Name:"generic.movement_speed"},{Base:1d,Name:"generic.follow_range"},{Base:0d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"},{Base:1d,Name:"generic.armor"},{Base:1d,Name:"generic.armor_toughness"}],Sheared:false,DeathLootTable:"",Color:14b,potion_contents:{custom_color:14b}}
scoreboard players set @e[tag=bw.tntsheep.new] board 6
tag @e[tag=bw.tntsheep.new] remove bw.tntsheep.new
playsound entity.tnt.primed block @a ~ ~ ~ 5 1 1
kill @s

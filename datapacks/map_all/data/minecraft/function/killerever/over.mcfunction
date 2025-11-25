##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set killer.state state 100
kill @e[type=arrow,tag=killer.arrow]
kill @e[type=armor_stand,tag=killer.bow]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{killer:1}}}}]
tellraw @a ["§a[I] ",{"text":"密室杀手","color":"red","bold":true}," §a: §b游戏结束！"]
tellraw @a[team=play.killer] ["\n§c    杀手：",{"selector":"@a[tag=killer.killer]"},"\n\n    §b侦探：",{"selector":"@a[tag=killer.saver]"},"\n"]
tellraw @a[team=wait.killer] ["\n§c    杀手：",{"selector":"@a[tag=killer.killer]"},"\n\n    §b侦探：",{"selector":"@a[tag=killer.saver]"},"\n"]
schedule function minecraft:killerever/tp 5s
gamemode spectator @a[team=wait.killer]
gamemode spectator @a[team=play.killer]
tag @a remove killer.killer
tag @a remove killer.saver
tag @a remove killer.runner
# kill @e[tag=killer.bow,type=armor_stand]
# tag @a remove killer.saver
# tag @a remove killer.killer


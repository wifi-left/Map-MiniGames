##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set killer.state state 4
tellraw @a ["\u00a7a[I] ",{"text":"密室杀手","color":"red","bold": true}," \u00a7a: \u00a7b游戏结束！"]
tellraw @a[team=play.killer] ["\n\u00a7c    杀手：",{"selector":"@a[tag=killer.killer]"},"\n\n    \u00a7b侦探：",{"selector":"@a[tag=killer.saver]"},"\n"]
tellraw @a[team=wait.killer] ["\n\u00a7c    杀手：",{"selector":"@a[tag=killer.killer]"},"\n\n    \u00a7b侦探：",{"selector":"@a[tag=killer.saver]"},"\n"]
schedule function minecraft:killerever/tp 5s
kill @e[tag=killer.bow,type=armor_stand]
tag @a remove killer.saver
tag @a remove killer.killer

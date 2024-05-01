##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove tntwars.a
tag @a remove tntwars.b
tellraw @a ["\u00a7cTNT Wars \u00a76游戏结束。"]
gamemode spectator @a[team=play.tntwars]
gamemode spectator @a[team=wait.tntwars]
scoreboard players set tnt.state state 3
execute in overworld positioned 502 -38 315 run kill @e[type=item,distance=0..60]
team join play.tntwars @a[team=wait.tntwars]
tellraw @a[team=play.tntwars] ["\u00a7e游戏将在\u00a7c5\u00a7e秒后重置。"]
kill @e[type=!player,tag=tntwars.tnt]
schedule function tntwars/over/tp 5s
kill @e[tag=tnt.tntrain]
schedule function tntwars/cleanmap 2s


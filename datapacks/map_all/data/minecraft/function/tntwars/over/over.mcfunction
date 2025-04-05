##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove tntwars.a
tag @a remove tntwars.b
tellraw @a ["§cTNT Wars §6游戏结束。"]
gamemode spectator @a[team=play.tntwars]
gamemode spectator @a[team=wait.tntwars]
scoreboard players set tnt.state state 3
execute in overworld positioned 502 -38 315 run kill @e[type=item,distance=0..60]
team join play.tntwars @a[team=wait.tntwars]
tellraw @a[team=play.tntwars] ["§e游戏将在§c5§e秒后重置。"]
kill @e[type=!player,tag=tntwars.tnt]
schedule function tntwars/over/tp 5s
kill @e[tag=tnt.tntrain]
schedule function tntwars/cleanmap 2s



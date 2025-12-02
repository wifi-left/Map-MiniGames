##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s leave
execute as @s at @s run tellraw @a[tag=play.total] [{"selector":"@s"},"§7 重新加入了游戏。"]
tellraw @s ["\n§7   本次游戏仍然有效，您已加入游戏！\n   §7您可以使用 §6/trigger hub§7返回大厅\n"]
team join play.total
tag @s add play.total
gamemode spectator @s
tp @s @r[tag=play.total,gamemode=!spectator]
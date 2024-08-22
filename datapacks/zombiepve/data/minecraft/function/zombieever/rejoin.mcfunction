##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s leave
execute as @s at @s run tellraw @a[tag=play.zombie] [{"selector":"@s"},"\u00a77 重新加入了游戏。"]
tellraw @s ["\n\u00a77   本次游戏仍然有效，您已加入游戏！\n   \u00a77您可以使用 \u00a76/trigger hub\u00a77返回大厅\n"]
team join play.zombie
gamemode spectator @s
tp @s 630 40 -78 90 0

execute if score zombie.mode board matches 1 unless entity @s[tag=GOABLE.SPEC] run function zombieever/fuhuo

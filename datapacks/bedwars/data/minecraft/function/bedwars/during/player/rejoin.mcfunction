##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s leave
execute as @s at @s run tellraw @a[tag=bw.player] [{"selector":"@s"},"\u00a77 重新加入了游戏。"]
tag @s[team=bw.blue] add bw.play
tag @s[team=bw.red] add bw.play
tag @s[team=bw.green] add bw.play
tag @s[team=bw.yellow] add bw.play
execute as @s[tag=bw.play] run tellraw @s ["\n\u00a77   本次游戏仍然有效，您已加入游戏！\n   \u00a77您可以使用 \u00a76/trigger hub\u00a77返回大厅\n"]
execute as @s[tag=!bw.play] run tellraw @s ["\n\u00a7c   本次游戏仍有效，但无法确认您的队伍！您无法进入游戏\n"]
# execute as @s[team=] run tellraw @s ["\n\u00a77   本次游戏仍然有效，您已加入游戏！\n   \u00a77您可以使用 \u00a76/trigger hub\u00a77返回大厅\n"]
execute as @s[tag=bw.play] at @s run function bedwars/during/player/died

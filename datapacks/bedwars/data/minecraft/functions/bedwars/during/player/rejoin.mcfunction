scoreboard players reset @s leave
gamemode adventure @s
execute as @s at @s run tellraw @a[tag=bw.player] [{"selector":"@s"},"\u00a77 has connected."]
tellraw @s ["\n\u00a77   本次游戏仍然有效，您已加入游戏！\n   \u00a77您可以使用 \u00a76/trigger hub\u00a77返回大厅\n"]
execute as @s at @s run function bedwars/during/player/died
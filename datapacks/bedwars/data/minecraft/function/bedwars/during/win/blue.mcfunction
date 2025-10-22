##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\n\n\n\n§f§l胜利 > §9蓝队 §6获得了胜利！\n"]
execute as @a[team=bw.blue,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
title @a[tag=bw.player] title ["\u00a7c\u00a7lGAME OVER"]
title @a[tag=bw.player] subtitle ["\u00a7dBedwars \u00a79Team Blue \u00a76Won"]

title @a[team=bw.blue] title ["\u00a76You won!"]
title @a[team=bw.blue] subtitle ["\u00a7dBedwars: \u00a79Team Blue"]
function minecraft:bedwars/after/over


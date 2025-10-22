##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\n\n\n\n§f§l胜利 > §e黄队 §6获得了胜利！\n"]
execute as @a[team=bw.yellow,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
title @a[tag=bw.player] title ["\u00a7c\u00a7lGAME OVER"]
title @a[tag=bw.player] subtitle ["\u00a7dBedwars \u00a7eTeam Yellow \u00a76Won"]
title @a[team=bw.yellow] title ["\u00a76You won!"]
title @a[team=bw.yellow] subtitle ["\u00a7dBedwars: \u00a7eTeam Yellow"]
function minecraft:bedwars/after/over


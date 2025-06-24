##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\n\n\n\n§f§l胜利 > §a绿队 §6获得了胜利！\n"]
title @a[tag=bw.player] title ["\u00a7c\u00a7lGAME OVER"]
title @a[tag=bw.player] subtitle ["\u00a7dBedwars \u00a7aTeam Green \u00a76Won"]
title @a[team=bw.green] title ["\u00a76You won!"]
title @a[team=bw.green] subtitle ["\u00a7dBedwars: \u00a7aTeam Green"]
function minecraft:bedwars/after/over


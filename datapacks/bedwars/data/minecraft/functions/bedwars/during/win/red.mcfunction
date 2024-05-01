##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\n\n\n\n\u00a7f\u00a7l胜利 > \u00a7c红队 \u00a76获得了胜利！\n"]
title @a[tag=bw.player] title ["\u00a7c\u00a7lGAME OVER"]
title @a[tag=bw.player] subtitle ["\u00a7dBedwars \u00a7cTeam Red \u00a76Won"]
title @a[team=bw.red] title ["\u00a76You won!"]
title @a[team=bw.red] subtitle ["\u00a7dBedwars: \u00a7cTeam Red"]
function minecraft:bedwars/after/over

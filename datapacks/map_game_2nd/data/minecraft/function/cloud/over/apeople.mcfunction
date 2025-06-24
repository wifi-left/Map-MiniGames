##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[tag=sw.msg] ["§c游戏结束！§6获胜者：",{"selector":"@a[gamemode=survival,team=play.sw]"}]
title @a[tag=sw.msg] title ["\u00a7c游戏结束"]
title @a[tag=sw.msg] subtitle [{"selector":"@a[gamemode=survival,team=play.sw]"},"\u00a7e 获得了胜利"]
function minecraft:cloud/over/all


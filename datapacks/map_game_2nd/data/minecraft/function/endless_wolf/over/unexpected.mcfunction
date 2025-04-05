##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.endwolf] ["§6游戏结束"]
tellraw @a[team=wait.endwolf] ["§6游戏结束"]
title @a[team=play.endwolf] title ["\u00a76出人意料地结局？"]
title @a[team=wait.endwolf] title ["\u00a76出人意料地结局？"]
title @a[team=play.endwolf,tag=!] subtitle ["\u00a77游戏结束"]
title @a[team=wait.endwolf] subtitle ["\u00a77游戏结束"]
function minecraft:endless_wolf/over/all

##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=btw.play.a] ["§2§lBOATWARS：§6平局"]
tellraw @a[team=btw.play.b] ["§2§lBOATWARS：§6平局"]
tellraw @a[team=btw.wait] ["§2§lBOATWARS：§6平局"]
title @a[team=btw.wait] title ["\u00a7c游戏结束"]
title @a[team=btw.play.a] title ["\u00a76你并没有输"]
title @a[team=btw.play.b] title ["\u00a76你并没有输"]
title @a[team=btw.wait] subtitle ["\u00a7a平局"]
title @a[team=btw.play.a] subtitle ["\u00a7a平局"]
title @a[team=btw.play.b] subtitle ["\u00a7a平局"]
function boatwars/over/all


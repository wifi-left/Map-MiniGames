##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=btw.play.a] ["§2§lBOATWARS：§6获胜队伍：§a队伍B"]
tellraw @a[team=btw.play.b] ["§2§lBOATWARS：§6获胜队伍：§a队伍B（你）"]
tellraw @a[team=btw.wait] ["§2§lBOATWARS：§6获胜队伍：§a队伍B"]
title @a[team=btw.wait] title ["\u00a7c游戏结束"]
title @a[team=btw.play.b] title ["\u00a76你赢了"]
title @a[team=btw.play.a] title ["\u00a7c你输了"]
title @a[team=btw.wait] subtitle ["\u00a7a队伍B\u00a7r赢了"]
title @a[team=btw.play.a] subtitle ["\u00a7a队伍B\u00a7r赢了"]
title @a[team=btw.play.b] subtitle ["\u00a7a队伍B（你）\u00a7r赢了"]
function boatwars/over/all


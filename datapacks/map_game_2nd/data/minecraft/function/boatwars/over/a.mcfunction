##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=btw.play.a] ["\u00a72\u00a7lBOATWARS：\u00a76获胜队伍：\u00a7a队伍A（你）"]
tellraw @a[team=btw.play.b] ["\u00a72\u00a7lBOATWARS：\u00a76获胜队伍：\u00a7a队伍A"]
tellraw @a[team=btw.wait] ["\u00a72\u00a7lBOATWARS：\u00a76获胜队伍：\u00a7a队伍A"]
title @a[team=btw.wait] title ["\u00a7c游戏结束"]
title @a[team=btw.play.a] title ["\u00a76你赢了"]
title @a[team=btw.play.b] title ["\u00a7c你输了"]
title @a[team=btw.wait] subtitle ["\u00a7a队伍A\u00a7r赢了"]
title @a[team=btw.play.a] subtitle ["\u00a7a队伍A（你）\u00a7r赢了"]
title @a[team=btw.play.b] subtitle ["\u00a7a队伍A\u00a7r赢了"]
function boatwars/over/all
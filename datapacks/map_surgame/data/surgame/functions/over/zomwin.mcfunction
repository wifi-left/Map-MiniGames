##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\u00a79生存游戏 ＞ \u00a7c游戏结束。\n\u00a76获胜者：僵尸队 (",{"selector":"@a[team=play.sur.zom]"},")"]
title @a[team=play.sur] title ["\u00a7cGame Over"]
title @a[team=play.sur.zom] title ["\u00a7cGame Over"]
title @a[team=wait.sur] title ["\u00a7cGame Over"]
title @a[team=play.sur.zom] title ["\u00a76You won!"]
function surgame:over/over

##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[gamemode=survival,team=play.sur,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
tellraw @a ["§9生存游戏 ＞ §c游戏结束。\n§6获胜者：",{"selector":"@a[gamemode=survival,team=play.sur]"},""]
title @a[team=play.sur] title ["\u00a7cGame Over"]
title @a[team=play.sur.zom] title ["\u00a7cGame Over"]
title @a[team=wait.sur] title ["\u00a7cGame Over"]
title @a[gamemode=survival,team=play.sur] title ["\u00a76You won!"]
function surgame:over/over


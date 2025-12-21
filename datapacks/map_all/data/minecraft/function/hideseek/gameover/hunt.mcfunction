##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=hide.play.hun] title ["\u00a76游戏结束!"]
tellraw @a[team=hide.play.hun] ["\n§c   猎人获胜！\n"]
tellraw @a[team=hide.play.ani] ["\n§c   猎人获胜！\n"]
tellraw @a[team=hide.wait] ["\n§c   猎人获胜！\n"]
execute as @a[team=hide.play.hun,gamemode=adventure,tag=play.total] run function minecraft:small_games/total/win_score {score:1}

function hideseek/gameover/over



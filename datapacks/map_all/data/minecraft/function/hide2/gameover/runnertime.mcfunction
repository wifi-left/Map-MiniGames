##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=hide.runner,gamemode=adventure] title ["\u00a76你赢了！"]
title @a[team=hide.runner,gamemode=spectator] title ["\u00a7c游戏结束"]
title @a[team=hide.killer] title ["\u00a7c你输了！"]
tellraw @a[team=hide.runner] ["\n§b   时间结束，逃跑者获胜！\n"]
tellraw @a[team=hide.runner] ["\n§b   时间结束，逃跑者获胜！\n"]
tellraw @a[team=hide.wait2] ["\n§b   时间结束，逃跑者获胜！\n"]
execute as @a[team=hide.runner,gamemode=adventure,tag=play.total] run function minecraft:small_games/total/win_score {score:2}

function hide2/gameover/over

# function hideseek/gameover/over


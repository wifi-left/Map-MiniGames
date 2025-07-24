##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=hide.play.hun] title ["\u00a76You won!"]
title @a[team=hide.play.ani] title ["\u00a7cYou lost!"]
tellraw @a[team=hide.play.hun] ["\n§b   躲藏者胜！\n"]
tellraw @a[team=hide.play.ani] ["\n§b   躲藏者获胜！\n"]
tellraw @a[team=hide.wait] ["\n§b   躲藏者获胜！\n"]
scoreboard players add @a[team=hide.play.ani,gamemode=adventure,tag=play.total] score 1
# execute if entity @a[team=play.snow,tag=play.total] run function small_games/total/next_game

function hideseek/gameover/over

# function hideseek/gameover/over


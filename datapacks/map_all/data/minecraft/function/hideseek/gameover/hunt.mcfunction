##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=hide.play.hun] title ["\u00a76Game Over!"]
tellraw @a[team=hide.play.hun] ["\n\u00a7c   猎人获胜！\n"]
tellraw @a[team=hide.play.ani] ["\n\u00a7c   猎人获胜！\n"]
tellraw @a[team=hide.wait] ["\n\u00a7c   猎人获胜！\n"]
scoreboard players add @a[team=hide.play.hun,gamemode=adventure,tag=play.total] score 1
execute as @a[team=hide.wait] run function hideseek/join
execute as @a[team=hide.play.hun] run function hideseek/join
execute as @a[team=hide.play.ani] run function hideseek/join
gamemode adventure @a[team=hide.wait]
function hideseek/gameover/over


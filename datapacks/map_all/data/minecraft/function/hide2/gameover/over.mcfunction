##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set hide2.state state 0
# title @a[team=hide.play.ani] title ["\u00a7cGAMEOVER!"]
# title @a[team=hide.play.hun] title ["\u00a7cGAMEOVER!"]
title @a[team=hide.wait2] title ["\u00a7cGAMEOVER!"]
bossbar set minecraft:hideseek2 players
function hide2/starting/reset
# bossbar set zombie:zombiecount players

schedule function hide2/gameover/tp 5s append

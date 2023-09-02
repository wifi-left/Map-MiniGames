forceload add 390 -301 545 -428
# execute if entity @a[team=play.snow,tag=play.total] run function small_games/total/next_game
execute if entity @a[team=hide.wait,tag=play.total] run function small_games/total/next_game

scoreboard players set hide.state state 0
# title @a[team=hide.play.ani] title ["\u00a7cGAMEOVER!"]
# title @a[team=hide.play.hun] title ["\u00a7cGAMEOVER!"]
title @a[team=hide.wait] title ["\u00a7cGAMEOVER!"]
bossbar set minecraft:hideseek players
function hideseek/starting/reset

# forceload add 435 -266 328 -356
kill @e[tag=hide.animals]
forceload remove 390 -301 545 -428

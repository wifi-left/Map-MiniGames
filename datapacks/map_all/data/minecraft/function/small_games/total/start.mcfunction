##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["§b§l小游戏合集 §a游戏开始。"]
scoreboard players add globle globle.game 1
scoreboard players operation game.total globle.game = globle globle.game
scoreboard players operation @a[team=wait.total] globle.game = game.total globle.game
scoreboard players set gametotal state 1
team join play.total @a[team=wait.total]
tag @a[team=play.total] add play.total
function small_games/total/reset
function small_games/total/next_game


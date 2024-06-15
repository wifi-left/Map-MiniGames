##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score chess.tmp.flag board matches 1.. run function minecraft:small_games/chess/gojp/check/final
scoreboard players set chess.tmp.flag board 1
execute if score chess.state state matches 1 run tellraw @a[team=chestgame] ["\u00a7a跳过\u00a7f\u00a7l白队\u00a7a下棋，因为他们没法下任何一颗！"]
execute if score chess.state state matches 1 run function minecraft:small_games/chess/gojp/turn/black

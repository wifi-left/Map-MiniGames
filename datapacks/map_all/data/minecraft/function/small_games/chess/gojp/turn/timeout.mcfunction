##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=chestgame] ["\u00a7c超时，游戏结束！"]
# function small_games/chess/five/nextround
execute if score chess.turn board matches 1 run function small_games/chess/gojp/win/white
execute if score chess.turn board matches 2 run function small_games/chess/gojp/win/black
# title @a[tag=chess.white] actionbar ["\u00a76\u00a7l你在\u00a7f\u00a7l白队。\u00a7c\u00a7l超时跳过。"]
# title @a[tag=chess.black] actionbar ["\u00a76\u00a7l你在\u00a70\u00a7l黑队。\u00a7c\u00a7l超时跳过。"]

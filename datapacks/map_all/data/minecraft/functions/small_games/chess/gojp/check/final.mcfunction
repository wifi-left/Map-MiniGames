##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=chestgame] ["\u00a76游戏结束！正在统计中..."]
scoreboard players set boom.fill.result.b board 0
scoreboard players set boom.fill.result.w board 0
execute store result score boom.fill.result.w board run fill 81 120 62 67 120 48 air replace white_stained_glass
execute store result score boom.fill.result.b board run fill 81 120 62 67 120 48 air replace black_stained_glass
# scoreboard players set chess.state state 2
execute if score chess.state state matches 1 if score boom.fill.result.w board > boom.fill.result.b board run function minecraft:small_games/chess/gojp/win/white
execute if score chess.state state matches 1 if score boom.fill.result.w board < boom.fill.result.b board run function minecraft:small_games/chess/gojp/win/black
execute if score chess.state state matches 1 if score boom.fill.result.w board = boom.fill.result.b board run function minecraft:small_games/chess/gojp/win/pj

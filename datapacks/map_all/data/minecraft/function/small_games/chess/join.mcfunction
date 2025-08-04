##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in overworld run tp @s 87 125 20 -90 0
title @s title ["\u00a7c\u00a7l棋类游戏"]
title @s subtitle ["\u00a7f打发时间的休闲小游戏"]
team join chestgame @s
execute in overworld run spawnpoint @s -65 139 -363
tag @s remove chest.white
tag @s remove chest.black
tag @s remove chess.white
tag @s remove chess.black
# execute if score chess.state state matches 1.. run function minecraft:small_games/chess/spec
clear @s
tellraw @a ["§a§l[棋类游戏] ",{"selector":"@s"}," §d加入。"]
tellraw @s ["§7欢迎光临咖啡厅~\n请您随便就坐。"]
advancement grant @s only games/chess_in_mc

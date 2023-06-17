tp @s 87 125 20 -90 0
title @s title ["\u00a7c\u00a7l棋类游戏"]
title @s subtitle ["\u00a7f打发时间的休闲小游戏"]
team join chestgame @s
spawnpoint @s -65 139 -363
tag @s remove chest.white
tag @s remove chest.black
tag @s remove chess.white
tag @s remove chess.black
# execute if score chess.state state matches 1.. run function minecraft:small_games/chess/spec
clear @s
tellraw @a ["\u00a7a\u00a7l[棋类游戏] ",{"selector":"@s"}," \u00a7d加入。"]
tellraw @s ["\u00a77欢迎光临咖啡厅~\n请您随便就坐。"]
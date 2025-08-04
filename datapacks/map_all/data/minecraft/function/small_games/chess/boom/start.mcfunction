##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[tag=chess.put.white]
kill @e[tag=chess.put.black]
function small_games/chess/boom/reset
scoreboard players set chess.state state 1
scoreboard players set chess.turn board 0
tag @a remove chess.white
tag @a remove chess.black
tag @a remove chest.white
tag @a remove chest.black
tag @a[team=chestgame,gamemode=adventure] add chess.ranteam
scoreboard players set rand board 1
execute as @a[tag=chess.ranteam] run function small_games/chess/boom/random_team
tag @a[tag=chess.ranteam] remove chess.ranteam
tp @a[team=chestgame,gamemode=adventure] 74 121 55 0 0
tp @a[team=chestgame,gamemode=adventure,tag=chess.black] 85 121 55 90 0
tp @a[team=chestgame,gamemode=adventure,tag=chess.white] 63 121 55 -90 0
title @a[team=chestgame,gamemode=adventure] title ["\u00a7e\u00a7l游戏开始！"]
title @a[team=chestgame,gamemode=adventure] subtitle ["\u00a7a游戏：\u00a7c爆炸棋！"]
tellraw @a[team=chestgame,gamemode=adventure] ["\n§a§l规则介绍：\n    §b先手在9个井字棋内任意一个下一颗棋子，对方需要在下子位置对应的井字棋内下棋（其余区域会变成橘色玻璃）。当您在一个井字棋内连成3子，您将“占领”该位置。若到您时，该位置已经下满或者已被占领，可以任选一个位置下。可用的位置将会用普通玻璃显示。当你在大井字棋（全棋盘），占领的位置连成3个，或者占领的位置最多，您将获胜。\n"]
scoreboard players set rand board 0
# tellraw @a[tag=chess.black] ["\u00a76你在\u00a70\u00a7l黑队"]
# tellraw @a[tag=chess.white] ["\u00a76你在\u00a7f\u00a7l白队"]
tellraw @a[tag=chess.black] ["\n§7    你在： §0§l黑队\n§a    队友：",{"selector":"@a[tag=chess.black]"},"\n§c    对手：",{"selector":"@a[tag=chess.white]"},"\n"]
tellraw @a[tag=chess.white] ["\n§7    你在： §f§l白队\n§a    队友：",{"selector":"@a[tag=chess.white]"},"\n§c    对手：",{"selector":"@a[tag=chess.black]"},"\n"]
function small_games/chess/boom/nextround
# Black First



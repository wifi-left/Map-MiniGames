##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§c该棋类仍在制作！"]
# kill @e[tag=chess.put.white]
# kill @e[tag=chess.put.black]
# function small_games/chess/five/reset
# scoreboard players set chess.state state 1
# scoreboard players set chess.turn board 0
# tag @a remove chess.white
# tag @a remove chess.black
# tag @a remove chest.white
# tag @a remove chest.black
# execute as @a[tag=chess.ranteam] run function small_games/chess/five/random_team

# tp @a[team=chestgame,gamemode=adventure] 74 121 55 0 0
# tp @a[team=chestgame,gamemode=adventure,tag=chess.black] 85 121 55 90 0
# tp @a[team=chestgame,gamemode=adventure,tag=chess.white] 63 121 55 -90 0
# title @a[team=chestgame,gamemode=adventure] title ["\u00a7e\u00a7l游戏开始！"]
# title @a[team=chestgame,gamemode=adventure] subtitle ["\u00a7a游戏：\u00a7c五子棋！"]
# tag @a[team=chestgame,gamemode=adventure] add chess.ranteam
# scoreboard players set rand board 0
# # tellraw @a[tag=chess.black] ["\u00a76你在\u00a70\u00a7l黑队"]
# # tellraw @a[tag=chess.white] ["\u00a76你在\u00a7f\u00a7l白队"]
# tellraw @a[tag=chess.black] ["\n\u00a77    你在： \u00a70\u00a7l黑队\n\u00a7a    队友：",{"selector":"@a[tag=chess.black]"},"\n\u00a7c    对手：",{"selector":"@a[tag=chess.white]"},"\n"]
# tellraw @a[tag=chess.white] ["\n\u00a77    你在： \u00a7f\u00a7l白队\n\u00a7a    队友：",{"selector":"@a[tag=chess.white]"},"\n\u00a7c    对手：",{"selector":"@a[tag=chess.black]"},"\n"]
# function small_games/chess/five/nextround
# # Black First


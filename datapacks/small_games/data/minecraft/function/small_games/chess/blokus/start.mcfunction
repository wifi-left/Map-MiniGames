function small_games/chess/blokus/reset
scoreboard players set chess.state state 1
scoreboard players set chess.turn board 0
tag @a[team=chestgame,gamemode=adventure] add chess.ranteam
scoreboard players set rand board 0
execute as @a[tag=chess.ranteam] run function small_games/chess/blokus/random_team
tag @a[tag=chess.ranteam] remove chess.ranteam
tp @a[team=chestgame,gamemode=adventure] 74 121 55 0 0
title @a[team=chestgame,gamemode=adventure] title ["\u00a7e\u00a7l游戏开始！"]
title @a[team=chestgame,gamemode=adventure] subtitle ["\u00a7a游戏：\u00a7c角斗士！"]
execute as @a[team=chestgame] run function minecraft:small_games/chess/blokus/tips
tp @a[team=chestgame,tag=chess.a] 67 121 48 -45 0
tp @a[team=chestgame,tag=chess.b] 81 121 62 135 0
tp @a[team=chestgame,tag=chess.c] 81 121 48 45 0
tp @a[team=chestgame,tag=chess.d] 67 121 62 -135 0

tellraw @a[tag=chess.a] ["\n§7    你在： §a§l队伍A\n§a    队友：",{"selector":"@a[tag=chess.a]"},"\n"]
tellraw @a[tag=chess.b] ["\n§7    你在： §9§l队伍B\n§a    队友：",{"selector":"@a[tag=chess.b]"},"\n"]
tellraw @a[tag=chess.c] ["\n§7    你在： §c§l队伍C\n§a    队友：",{"selector":"@a[tag=chess.c]"},"\n"]
tellraw @a[tag=chess.d] ["\n§7    你在： §e§l队伍D\n§a    队友：",{"selector":"@a[tag=chess.d]"},"\n"]
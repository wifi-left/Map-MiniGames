tag @a[team=deskgame] add play.total
scoreboard players set desk.state state 6
scoreboard players set gametotal state 1
scoreboard players reset @a[team=deskgame] score
gamemode spectator @a[team=deskgame]
title @a[team=deskgame] title ["\u00a7a\u00a7l随机游戏"]
title @a[team=deskgame] subtitle ["\u00a7e即将在 \u00a7c3s \u00a7e后随机开始一个小游戏"]
tellraw @a[team=deskgame] ["\u00a76请注意！重复游戏模式已开启！您可能游玩到重复的游戏！"]

execute store result score count.2 board run data get storage minecraft:temp random_games.games

execute unless score count.2 board matches 1.. run function minecraft:small_games/total/reset

execute store result score count.2 board run data get storage minecraft:temp random_games.games

execute unless score count.2 board matches 1.. run return run function minecraft:merchant/during/no_small_games

schedule function small_games/total/get_random_game 3s
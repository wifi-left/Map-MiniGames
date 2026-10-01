##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
schedule clear small_games/total/wur/startgame/a
schedule clear small_games/total/wur/startgame/b
tag @a remove total.rank.pool
tag @a remove total.rank.found
tag @a remove total.rank.1
tag @a remove total.rank.2
tag @a remove total.rank.3
tag @a remove total.rank.4
tag @a remove total.rank.5
scoreboard players set gametotal state 0
# gamemode survival @a[tag=play.total]
execute as @a[tag=play.total] in overworld run gamemode adventure @s
execute as @a[tag=play.total] in overworld run function small_games/total/join
tag @a[tag=play.total] remove play.total


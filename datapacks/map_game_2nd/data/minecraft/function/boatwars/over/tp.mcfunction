##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=btw.play.a] add tmp
tag @a[team=btw.play.b] add tmp
tag @a[team=btw.wait] add tmp
team join btw.wait @a[team=btw.play.a]
team join btw.wait @a[team=btw.play.b]

execute if entity @a[team=btw.wait,tag=play.total] run function minecraft:small_games/total/next_game_trigger

execute as @a[tag=tmp] run function boatwars/join
tag @a[tag=tmp] remove tmp
scoreboard players set btw.state state 0
schedule clear boatwars/startround



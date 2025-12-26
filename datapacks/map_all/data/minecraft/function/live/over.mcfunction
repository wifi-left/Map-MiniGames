##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set live.state state 0
gamemode adventure @a[team=wait.live]
gamemode adventure @a[team=play.live.killer]
gamemode adventure @a[team=play.live.runner]
team join wait.live @a[team=play.live.killer]
team join wait.live @a[team=play.live.runner]
execute if entity @a[team=wait.live,tag=play.total] run function minecraft:small_games/total/next_game_trigger
tag @a[team=wait.live] add join.livelongest
tag @a[team=play.live.killer] add join.livelongest
tag @a[team=play.live.runner] add join.livelongest
clear @a[team=play.live.killer]
clear @a[team=play.live.runner]
clear @a[team=wait.live]
bossbar set minecraft:live players


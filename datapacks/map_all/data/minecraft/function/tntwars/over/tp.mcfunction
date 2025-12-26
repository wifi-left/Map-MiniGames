##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tnt.state state 0
execute if entity @a[team=play.tntwars,tag=play.total] run function minecraft:small_games/total/next_game_trigger

execute as @a[team=play.tntwars,gamemode=spectator] at @s run function tntwars/join
#


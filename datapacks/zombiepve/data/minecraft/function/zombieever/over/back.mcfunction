##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode adventure @a[gamemode=spectator,team=play.zombie]
execute as @a[team=play.zombie,gamemode=adventure] run function zombieever/join
scoreboard players set zombie.state state 0

function zombieever/over/clearfunctions
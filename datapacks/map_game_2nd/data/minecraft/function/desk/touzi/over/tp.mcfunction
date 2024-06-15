##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.state state 0
execute as @a[team=deskgame,gamemode=!creative] at @s in lobby run gamemode adventure @s
execute as @a[team=deskgame,gamemode=!creative] at @s in lobby run function desk/join

schedule clear minecraft:desk/touzi/round/atrun
schedule clear minecraft:desk/touzi/round/new_round

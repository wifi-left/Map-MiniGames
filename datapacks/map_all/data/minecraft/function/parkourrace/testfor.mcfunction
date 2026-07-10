##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.park.player tick 0
execute as @a[team=play.parkour,gamemode=adventure] run scoreboard players add play.park.player tick 1
execute if score park.state state matches 1.. if score play.park.player tick matches ..0 run function minecraft:parkourrace/over
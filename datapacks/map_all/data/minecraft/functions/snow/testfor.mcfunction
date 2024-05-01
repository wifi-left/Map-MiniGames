##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.snow.player tick 0
execute as @a[team=play.snow,gamemode=adventure] run scoreboard players add play.snow.player tick 1
execute if score play.snow.player tick matches ..1 unless score play.snow.debug state matches 1..1 run function minecraft:snow/over

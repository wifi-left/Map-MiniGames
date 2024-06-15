##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set sur.player tick 0
execute as @a[team=play.sur,gamemode=survival] run scoreboard players add sur.player tick 1
execute if score sur.player tick matches ..1 run function surgame:over/normal

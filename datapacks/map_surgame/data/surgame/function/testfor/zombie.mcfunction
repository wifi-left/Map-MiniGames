##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score sur.time board >= sur.maxtime board run function surgame:over/playerwin
scoreboard players set sur.player tick 0
execute as @a[team=play.sur,gamemode=survival] run scoreboard players add sur.player tick 1
execute if score sur.player tick matches ..0 run function surgame:over/zomwin

execute as @a[team=play.sur.zom] run scoreboard players add sur.player tick 1
execute if score sur.player tick matches ..1 run function surgame:over/special


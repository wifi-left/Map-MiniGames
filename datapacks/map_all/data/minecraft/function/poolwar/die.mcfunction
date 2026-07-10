##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=pw.play] [{"selector":"@s"},"§7 died."]
gamemode spectator @s

scoreboard players set play.tmp.player tick 0
execute as @a[team=pw.play,gamemode=adventure] run scoreboard players add play.tmp.player tick 1

execute if score play.tmp.player tick matches 0 run execute as @s run function minecraft:small_games/total/win_score {score:3}
execute if score play.tmp.player tick matches 1 run execute as @s run function minecraft:small_games/total/win_score {score:2}
execute if score play.tmp.player tick matches 2 run execute as @s run function minecraft:small_games/total/win_score {score:1}

advancement grant @s only games/pool_cold_underwater

##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§c对不起，你淘汰了！"]
tellraw @a[team=play.color] [{"selector":"@s"},"§c 淘汰！"]
tellraw @a[team=wait.color] [{"selector":"@s"},"§c 淘汰！"]
gamemode spectator @s
scoreboard players set play.color.player tick 0
execute as @a[team=play.color,gamemode=adventure] run scoreboard players add play.color.player tick 1

execute if score play.color.player tick matches 0 run execute as @s run function minecraft:small_games/total/win_score {score:3}
execute if score play.color.player tick matches 1 run execute as @s run function minecraft:small_games/total/win_score {score:2}
execute if score play.color.player tick matches 2 run execute as @s run function minecraft:small_games/total/win_score {score:1}

title @a[team=play.color] actionbar ["\u00a7c当前场上剩余选手： ",{"score":{"objective": "tick","name": "play.color.player"},"color": "dark_purple"}]
tp @s 13.0 38 95.0 0 90
advancement grant @s only games/i_am_colorblindness


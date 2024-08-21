##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a7c对不起，你淘汰了！"]
tellraw @a[team=play.beli] [{"selector":"@s"},"\u00a7c 淘汰！"]
tellraw @a[team=wait.beli] [{"selector":"@s"},"\u00a7c 淘汰！"]
gamemode spectator @s
scoreboard players set play.beli.player tick 0
execute as @a[team=play.beli,gamemode=adventure] run scoreboard players add play.beli.player tick 1
title @a[team=play.beli] actionbar ["\u00a7c当前场上剩余选手： ",{"score":{"objective": "tick","name": "play.beli.player"},"color": "dark_purple"}]
advancement grant @s only games/i_cant_believe_myself

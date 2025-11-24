##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§c对不起，你淘汰了！"]
gamemode spectator @s
scoreboard players set play.killer.player tick 0
execute as @a[team=play.killer,gamemode=adventure] run scoreboard players add play.killer.player tick 1
title @a[team=play.killer] actionbar ["\u00a7c当前场上剩余选手： ",{"score":{"objective": "tick","name": "play.killer.player"},"color": "dark_purple"}]
tp @s @r[team=play.killer,gamemode=adventure]

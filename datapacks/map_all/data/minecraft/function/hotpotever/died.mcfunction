##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a7c对不起，你淘汰了！"]
team join play.hotpot @s
tellraw @a[team=play.hotpot] [{"selector":"@s"},"\u00a7c 淘汰！"]
tellraw @a[team=wait.hotpot] [{"selector":"@s"},"\u00a7c 淘汰！"]
gamemode spectator @s
scoreboard players set play.hotpot.player tick 0
execute as @a[team=play.hotpot,gamemode=adventure] run scoreboard players add play.hotpot.player tick 1
title @a[team=play.hotpot] actionbar ["\u00a7c当前场上剩余选手： ",{"score":{"objective": "tick","name": "play.hotpot.player"},"color": "dark_purple"}]
advancement grant @s only games/potato_boom
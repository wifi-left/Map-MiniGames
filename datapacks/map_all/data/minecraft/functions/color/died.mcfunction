tellraw @s ["\u00a7c对不起，你淘汰了！"]
tellraw @a[team=play.color] [{"selector":"@s"},"\u00a7c 淘汰！"]
tellraw @a[team=wait.color] [{"selector":"@s"},"\u00a7c 淘汰！"]
gamemode spectator @s
scoreboard players set play.color.player tick 0 
execute as @a[team=play.color,gamemode=adventure] run scoreboard players add play.color.player tick 1
title @a[team=play.color] actionbar ["\u00a7c当前场上剩余选手： ",{"score":{"objective": "tick","name": "play.color.player"},"color": "dark_purple"}]
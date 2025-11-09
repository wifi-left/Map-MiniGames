##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.sneak.player tick 0
execute as @a[team=sneak,gamemode=adventure] run scoreboard players add play.sneak.player tick 1
execute if score play.sneak.player tick matches ..1 unless score sneak.debug state matches 1..1 run function minecraft:sneak/over


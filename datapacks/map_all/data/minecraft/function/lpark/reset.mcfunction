##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§e你的跑酷已经重置！"]
execute in minecraft:parkourworld run tp @s 8 4 8 0 0

# function minecraft:npark/join
execute at @s run playsound ui.button.click player @s ~ ~ ~ 10 1 1
# function minecraft:npark/resettime



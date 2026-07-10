##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§e你的迷宫进度已经重置！"]
playsound ui.button.click player @s
tag @s remove mazing
clear @s carrot_on_a_stick
tp @s 235 115 66 -90 0


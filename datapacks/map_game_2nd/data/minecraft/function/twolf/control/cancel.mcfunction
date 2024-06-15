##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score @s LRS_CS matches ..0 run playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute if score @s LRS_CS matches ..0 run return 0

scoreboard players set @s LRS_CS 0
title @s actionbar ["\u00a7c取消选择！"]


playsound ui.button.click player @s ~ ~ ~ 1 1 1

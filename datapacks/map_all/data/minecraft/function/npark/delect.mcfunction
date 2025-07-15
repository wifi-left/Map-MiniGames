##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s park.x
scoreboard players reset @s park.y
scoreboard players reset @s park.z
tellraw @s ["§a[Checkpoint] §e你的记录点已被删除！"]
playsound ui.button.click player @s


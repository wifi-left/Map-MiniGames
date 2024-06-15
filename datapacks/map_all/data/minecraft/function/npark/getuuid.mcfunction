##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add p.uid park.uuid 1
scoreboard players operation @s park.uuid = p.uid park.uuid
tellraw @s ["\u00a77Debug Info : Your UUID is [",{"score":{"objective": "park.uuid","name": "@s"},"color": "gray"},"\u00a77]"]

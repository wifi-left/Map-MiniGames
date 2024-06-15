##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @a[team=hunger] [{"selector":"@s"},"\u00a7c 淘汰了。"]
tellraw @s ["\u00a7c你已被淘汰。"]
gamemode spectator
tp @s 159 15 147 0 0
title @a[team=hunters] actionbar [{"selector":"@s"},"\u00a7c淘汰了。剩余",{"score":{"objective": "tick","name": "hunger.player"}},"\u00a7c人。"]

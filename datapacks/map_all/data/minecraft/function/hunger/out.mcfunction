##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @a[team=hunger] [{"selector":"@s"},"\u00a7c 淘汰了。"]
tellraw @s ["§c你已被淘汰。"]
gamemode spectator
tp @s 449 -10 -238 0 0
title @a[team=hunters] actionbar [{"selector":"@s"},"\u00a7c淘汰了。剩余",{"score":{"objective": "tick","name": "hunger.player"}},"\u00a7c人。"]


##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless entity @a[tag=battle.notready,gamemode=adventure,tag=battle.sel] run function battle/round_ready

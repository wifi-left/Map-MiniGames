##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
item replace entity @a[team=boat,tag=boat.notspawn] hotbar.7 with air
item replace entity @a[team=boat,tag=boat.notspawn] hotbar.8 with air

execute unless entity @a[team=boat,tag=boat.notinboat,gamemode=adventure] run function boat/readygo

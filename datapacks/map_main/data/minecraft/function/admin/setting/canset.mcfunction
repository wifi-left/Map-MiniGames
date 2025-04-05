##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s[tag=map.op] run return 1
execute if score map.settingmode board matches 0 run return 1
return 0

##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score golf.state state matches 1..4 unless entity @a[gamemode=!creative,team=golf] run function minecraft:golf/over/all
execute if score golf.state state matches 2 unless entity @a[gamemode=adventure,team=golf] run function minecraft:golf/gaming/noplayer
execute if score golf.state state matches 2 if score golf.time tick matches ..0 run function minecraft:golf/gaming/timeout

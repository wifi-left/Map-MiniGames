##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score boom.state state matches 1..4 unless entity @a[gamemode=!creative,team=boom] run function minecraft:bomb/over/unexpected
execute if score boom.state state matches 2 if score boom.time board matches -1..0 run function minecraft:bomb/round/timeout
execute if score boom.state state matches 2 unless entity @a[gamemode=adventure,team=boom] run function minecraft:bomb/round/noplayer
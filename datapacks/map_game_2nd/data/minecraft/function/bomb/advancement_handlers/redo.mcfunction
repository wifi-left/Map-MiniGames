##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:bomb/round/reset
tellraw @a[team=boom] ["\u00a7e    关卡已重置。"]
advancement revoke @s only bomb/redo


##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set endwolf.state state 5
schedule function minecraft:endless_wolf/over/tp 5s replace
tag @a remove endless.vampire
function minecraft:endless_wolf/reset

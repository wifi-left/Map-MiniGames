##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set endwolf.state state 0
execute as @a[team=wait.endwolf] in overworld run function minecraft:endless_wolf/join
execute as @a[team=play.endwolf] in overworld run function minecraft:endless_wolf/join
function minecraft:endless_wolf/reset


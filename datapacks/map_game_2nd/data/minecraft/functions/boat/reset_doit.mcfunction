##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @e[tag=boat.reset.structure] at @s if score boat.type board matches 3 run fill ~ ~ ~ ~16 ~16 ~31 lava replace obsidian


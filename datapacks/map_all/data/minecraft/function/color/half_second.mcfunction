##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score color.state state matches 3..3 if score color.tick tick matches ..3 run execute as @a[team=play.color] at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5 0

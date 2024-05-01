##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s hp.hurt

tellraw @s ["\u00a7c你无法将土豆传递给他。请重试！"]
playsound entity.enderman.teleport player @s ~ ~ ~ 2 0 1

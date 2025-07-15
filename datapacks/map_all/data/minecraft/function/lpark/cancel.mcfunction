##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s park.x
scoreboard players reset @s park.y
scoreboard players reset @s park.z
tellraw @s ["§e你的跑酷已经取消！"]
playsound ui.button.click player @s
tag @s remove parkouring
clear @s carrot_on_a_stick

scoreboard players set @s hub 1


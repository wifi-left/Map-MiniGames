##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=play.color] actionbar ["\u00a7b第 ",{"score":{"objective":"tick","name":"color.round"},"color":"gold"},"\u00a7b 轮 \u00a78| \u00a76警告 : 将在 ",{"score":{"objective": "tick","name":"color.tick"},"color": "green"},"\u00a76 秒后开始检测！"]
execute if score color.tick tick matches ..0 run function minecraft:color/detect
execute as @a[team=play.color] at @s run playsound minecraft:entity.experience_orb.pickup player @s
scoreboard players remove color.tick tick 1



##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set minecraft:hungergame name ["\u00a74饥饿游戏 \u00a78| \u00a7a游戏即将结束：\u00a7b剩余\u00a7e",{"score":{"objective": "board","name": "hunger.time"},"color": "yellow"},"\u00a7e秒"]
execute if score hunger.time board matches ..0 run function hunger/over/over


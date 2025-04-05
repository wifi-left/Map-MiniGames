bossbar set minecraft:hungergame name ["\u00a74饥饿游戏 \u00a78| \u00a7b死亡对决将在\u00a7e",{"score":{"objective": "board","name": "hunger.time"},"color": "yellow"},"\u00a7e秒\u00a7b后开始。"]
execute if score hunger.time board matches ..0 run function hunger/step/finalstart

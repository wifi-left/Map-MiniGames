scoreboard players add p.uid park.uuid 1
scoreboard players operation @s park.uuid = p.uid park.uuid
tellraw @s ["\u00a77Debug Info : Your UUID is [",{"score":{"objective": "park.uuid","name": "@s"},"color": "gray"},"\u00a77]"]

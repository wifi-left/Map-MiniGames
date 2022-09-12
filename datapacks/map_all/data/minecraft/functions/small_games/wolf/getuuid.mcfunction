scoreboard players add LRS_UUID board 1
scoreboard players operation @s LRS_UUID = LRS_UUID board
tellraw @s ["\u00a76你的临时 UID 为：",{"score":{"name": "@s","objective": "LRS_UUID"},"color":"yellow"}]
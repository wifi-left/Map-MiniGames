##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players operation @s zombie.coin += @s zombie.hurt
tellraw @s ["\u00a76+",{"score":{"name": "@s","objective": "zombie.hurt"},"color":"gold"},"\u00a76 Coins"]

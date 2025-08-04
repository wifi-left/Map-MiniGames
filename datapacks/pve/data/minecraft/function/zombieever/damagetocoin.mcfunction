##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players operation @s zombie.coin += @s zombie.hurt
tellraw @s ["§6+",{"score":{"name":"@s","objective":"zombie.hurt"},"color":"gold"},"§6 Coins"]


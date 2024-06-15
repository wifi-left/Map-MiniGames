##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set 100 board 100
scoreboard players set 60 board 60
scoreboard players operation @s parkour.second = @s parkour.tick
scoreboard players operation @s parkour.stick = @s parkour.tick
scoreboard players operation @s parkour.second /= 100 board
scoreboard players operation @s parkour.stick %= 100 board
scoreboard players operation @s parkour.minute = @s parkour.second
# scoreboard players operation @s parkour.minute = @s parkour.second
scoreboard players operation @s parkour.minute /= 60 board
scoreboard players operation @s parkour.second %= 60 board



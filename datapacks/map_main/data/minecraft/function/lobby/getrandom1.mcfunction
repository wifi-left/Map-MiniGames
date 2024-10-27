##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# scoreboard players operation random board = @e[limit=1,tag=random_saying,sort=random,scores={board=1..11}] board
execute store result score random board run random value 1..26

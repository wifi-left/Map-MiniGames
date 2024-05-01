##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add speed lobby.effect 0
execute if score speed lobby.effect matches -10..0 run function lobby/speed_one
execute if score speed lobby.effect matches 1..1 run function lobby/speed_two
execute if score speed lobby.effect matches 2..2 run function lobby/speed_off
scoreboard players add speed lobby.effect 1
execute if score speed lobby.effect matches 3.. run scoreboard players set speed lobby.effect 0

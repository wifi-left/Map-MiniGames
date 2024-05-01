##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add jump lobby.effect 0
execute if score jump lobby.effect matches -10..0 run function lobby/jump_one
execute if score jump lobby.effect matches 1..1 run function lobby/jump_two
execute if score jump lobby.effect matches 2..2 run function lobby/jump_off
scoreboard players add jump lobby.effect 1
execute if score jump lobby.effect matches 3.. run scoreboard players set jump lobby.effect 0

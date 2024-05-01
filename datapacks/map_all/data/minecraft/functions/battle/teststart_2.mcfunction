##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score wait.player tick matches ..1 run tellraw @s ["\u00a7c人数不够！请等待至少2人！"]
execute if score wait.player tick matches ..1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
# execute if score wait.player tick matches 9.. run tellraw @s ["\u00a7c人数过多！只允许最多8人！"]
# execute if score wait.player tick matches 9.. run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1

scoreboard players operation tmp board = wait.player tick
scoreboard players set 2 board 2
scoreboard players operation tmp board %= 2 board

execute if score wait.player tick matches 2.. unless score tmp board matches 0 run tellraw @s ["\u00a7c为保证游戏质量，防止人数过度不平衡，无法开始游戏"]
execute if score wait.player tick matches 2.. unless score tmp board matches 0 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score wait.player tick matches 2.. if score tmp board matches 0 run function minecraft:battle/start


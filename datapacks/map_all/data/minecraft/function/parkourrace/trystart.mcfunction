##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score park.state state matches 1 run function minecraft:parkourrace/jointhegame

scoreboard players set wait.park.player tick 0
execute as @a[team=wait.parkour] run scoreboard players add wait.park.player tick 1

execute unless score park.state state matches 1.. if score wait.park.player tick matches 1.. run function minecraft:parkourrace/start


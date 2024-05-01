##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
scoreboard players set wait.player tick 0
execute as @a[team=wait.battle,gamemode=adventure] run scoreboard players add wait.player tick 1

execute if score battle.state state matches 1.. run function minecraft:battle/spec
execute unless score battle.state state matches 1.. run function battle/teststart_2

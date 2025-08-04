##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
scoreboard players set wait.player tick 0
execute as @a[team=car.wait,gamemode=adventure] run scoreboard players add wait.player tick 1
scoreboard players add car.state state 0
tag @s remove car.win

execute if score car.state state matches 1.. run function minecraft:car_race/spec
execute unless score car.state state matches 1.. if score wait.player tick matches ..1 run tellraw @s ["§c人数不够！请等待至少2人！"]
execute unless score car.state state matches 1.. if score wait.player tick matches ..1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score car.state state matches 1.. if score wait.player tick matches 2.. run function minecraft:car_race/start



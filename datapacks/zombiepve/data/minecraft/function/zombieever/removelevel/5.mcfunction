##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players remove @s bw.tmp.em 5
xp add @s -5 levels
# xp set @s 1 points

execute if score @s bw.tmp.em matches 5.. run function minecraft:zombieever/removelevel/5
execute if score @s bw.tmp.em matches 1..4 run function minecraft:zombieever/removelevel/1
execute if score @s bw.tmp.em matches ..0 run scoreboard players reset @s bw.tmp.em
##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players remove @s bw.tmp.em 50
xp add @s -50 levels
# xp set @s 1 points

execute if score @s bw.tmp.em matches 50.. run function minecraft:zombieever/removelevel/50
execute if score @s bw.tmp.em matches 25..49 run function minecraft:zombieever/removelevel/25
execute if score @s bw.tmp.em matches 10.. run function minecraft:zombieever/removelevel/10
execute if score @s bw.tmp.em matches 5..9 run function minecraft:zombieever/removelevel/5
execute if score @s bw.tmp.em matches 1..4 run function minecraft:zombieever/removelevel/1
execute if score @s bw.tmp.em matches ..0 run scoreboard players reset @s bw.tmp.em

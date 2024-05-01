##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function hunger/flushitem
tellraw @a[team=hunger] ["\u00a7a箱子补给已刷新"]
title @a[team=hunger] title [""]
execute as @a[team=hunger] at @s run playsound block.chest.open player @s ~ ~ ~ 10 1 1
title @a[team=hunger] subtitle ["\u00a7a箱子补给已刷新"]
scoreboard players remove hunger.chests board 1
scoreboard players set hunger.time board 240
scoreboard players set hunger.state state 2
bossbar set minecraft:hungergame max 240

execute if score hunger.chests board matches ..0 run bossbar set minecraft:hungergame max 300
execute if score hunger.chests board matches ..0 run scoreboard players set hunger.time board 300
execute if score hunger.chests board matches ..0 run scoreboard players set hunger.state state 3

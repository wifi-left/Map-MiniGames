##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.snow,gamemode=adventure] at @s unless entity @e[tag=snow.disa,distance=0..1] run function minecraft:snow/tntrun/setsnow
execute as @e[tag=snow.disa,type=marker] at @s unless block ~ ~ ~ #minecraft:snowmineable run kill @s
execute as @e[tag=snow.disa,type=marker] at @s if score @s snow.tick matches ..0 run tag @s add snow.die
execute as @e[tag=snow.die,type=marker] at @s if block ~ ~ ~ #minecraft:snowmineable run setblock ~ ~ ~ air
execute as @e[tag=snow.die,type=marker] at @s run kill @e[type=item,distance=0..2]
execute as @e[tag=snow.die,type=marker] at @s run kill @s
scoreboard players remove @e[tag=snow.disa,type=marker] snow.tick 1

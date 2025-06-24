##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.snow,gamemode=adventure] at @s unless entity @e[tag=snow.disa,distance=0..1] run function minecraft:snow/tntrun/setsnow

execute as @e[tag=snow.disa,type=marker] at @s unless score @s snow.tick matches 1.. run tag @s add snow.die
execute as @e[tag=snow.die,type=marker] at @s run function minecraft:snow/tntrun/block_disappear

scoreboard players remove @e[tag=snow.disa,type=marker] snow.tick 1


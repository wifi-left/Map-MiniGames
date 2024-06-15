##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @e[tag=beliran] run spreadplayers 22 -65 0 16 false @s
execute as @e[tag=beliran] at @s if block ~ ~-1 ~ red_wool run setblock ~ ~-1 ~ air
execute as @e[tag=beliran] at @s if block ~ ~-1 ~ orange_wool run setblock ~ ~-1 ~ red_wool
execute as @e[tag=beliran] at @s if block ~ ~-1 ~ yellow_wool run setblock ~ ~-1 ~ orange_wool
execute as @e[tag=beliran] at @s if block ~ ~-1 ~ white_wool run setblock ~ ~-1 ~ yellow_wool
scoreboard players set play.beli.player tick 0
execute as @a[team=play.beli,gamemode=adventure] run scoreboard players add play.beli.player tick 1
execute if score play.beli.player tick matches ..1 run function minecraft:believer/over
effect give @a[team=play.beli] resistance 1 25 true
effect give @a[team=play.beli] minecraft:night_vision 20 25 true

##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s ~ ~ ~1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players add blackcount board 1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all unless score blackcount board matches 3.. at @s run function small_games/chess/boom/check/black/c
# setblock 74 111 55 black_wool


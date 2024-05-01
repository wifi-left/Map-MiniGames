##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s ~ ~ ~-1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players add whitecount board 1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all unless score whitecount board matches 3.. at @s run function small_games/chess/boom/check/white/d
# setblock 74 111 55 white_wool


##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s ~2 ~ ~-2
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players set chess.tmp board 1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 110 55 all unless score chess.tmp board matches 1.. at @s run function small_games/chess/gojp/check/ways/h
# setblock 74 111 55 black_wool



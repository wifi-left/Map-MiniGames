##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s ~2 ~ ~
# tellraw @a [{"score":{"name": "blackcount","objective": "board"}}]

execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 111 55 all run scoreboard players set chess.tmp board 1
execute at @s if blocks ~ ~-1 ~ ~ ~-1 ~ 74 110 55 all run setblock ~ ~-1 ~ lime_stained_glass
execute at @s if block ~ ~-1 ~ lime_stained_glass unless score chess.tmp board matches 1.. run function small_games/chess/gojp/change/ways/a
# setblock 74 111 55 black_wool
# tellraw @a [{"score":{"name": "blackcount","objective": "board"}}]

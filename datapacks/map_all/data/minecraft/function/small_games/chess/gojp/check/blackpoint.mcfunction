##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
setblock 74 111 55 black_stained_glass
setblock 74 110 55 white_stained_glass
fill 81 120 62 67 120 48 pink_stained_glass replace glass
scoreboard players set chess.tmp.count board 0

execute as @e[tag=chess.point] at @s if block ~ ~ ~ white_stained_glass run function minecraft:small_games/chess/gojp/check/perblack

fill 81 120 62 67 120 48 pink_stained_glass replace red_stained_glass
# /clone 67 120 48 81 120 62 66 100 47

execute if score chess.tmp.count board matches 0 run function minecraft:small_games/chess/gojp/turn/blackcantdown
execute unless score chess.tmp.count board matches 0 run scoreboard players set chess.tmp.flag board 0

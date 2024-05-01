##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
setblock 74 111 55 white_stained_glass
setblock 74 110 55 black_stained_glass
scoreboard players set chess.tmp.count board 0

fill 81 120 62 67 120 48 pink_stained_glass replace glass
execute as @e[tag=chess.point] at @s if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/perwhite
fill 81 120 62 67 120 48 pink_stained_glass replace red_stained_glass

execute if score chess.tmp.count board matches 0 run function minecraft:small_games/chess/gojp/turn/whitecantdown
execute unless score chess.tmp.count board matches 0 run scoreboard players set chess.tmp.flag board 0


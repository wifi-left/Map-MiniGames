##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set chess.tmp board 0
# 默认初始化为 0：false


execute if score chess.tmp board matches 0 positioned ~2 ~ ~ if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/sa
execute if score chess.tmp board matches 0 positioned ~-2 ~ ~ if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/sb
execute if score chess.tmp board matches 0 positioned ~ ~ ~2 if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/sc
execute if score chess.tmp board matches 0 positioned ~ ~ ~-2 if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/sd
execute if score chess.tmp board matches 0 positioned ~2 ~ ~2 if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/se
execute if score chess.tmp board matches 0 positioned ~-2 ~ ~-2 if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/sf
execute if score chess.tmp board matches 0 positioned ~-2 ~ ~2 if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/sg
execute if score chess.tmp board matches 0 positioned ~2 ~ ~-2 if block ~ ~ ~ black_stained_glass run function minecraft:small_games/chess/gojp/check/ways/sh

execute if score chess.tmp board matches 1.. run setblock ~ ~ ~ glass
execute if score chess.tmp board matches 1.. run scoreboard players add chess.tmp.count board 1
execute if score chess.tmp board matches 0 run setblock ~ ~ ~ red_stained_glass

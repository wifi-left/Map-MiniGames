##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
setblock 74 111 55 black_stained_glass
setblock 74 110 55 white_stained_glass

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/sa
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["\n1",{"score":{"objective": "board","name": "chess.tmp"}}]

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/sb
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["2",{"score":{"objective": "board","name": "chess.tmp"}}]

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/sc
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["3",{"score":{"objective": "board","name": "chess.tmp"}}]

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/sd
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["4",{"score":{"objective": "board","name": "chess.tmp"}}]

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/se
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["5",{"score":{"objective": "board","name": "chess.tmp"}}]

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/sf
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["6",{"score":{"objective": "board","name": "chess.tmp"}}]

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/sg
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["7",{"score":{"objective": "board","name": "chess.tmp"}}]

scoreboard players set chess.tmp board 0
function minecraft:small_games/chess/gojp/change/ways/sh
execute if score chess.tmp board matches 1.. run fill 81 120 62 67 120 48 black_stained_glass replace lime_stained_glass
execute if score chess.tmp board matches 0 run fill 81 120 62 67 120 48 white_stained_glass replace lime_stained_glass
# tellraw @a ["8",{"score":{"objective": "board","name": "chess.tmp"}}]



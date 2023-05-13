fill ~ ~-1 ~ ~ ~-1 ~ white_stained_glass replace glass
fill ~ 115 ~ ~ 115 ~ white_wool replace orange_wool
playsound ui.button.click player @a[team=chestgame] ~ ~ ~ 
summon marker ~ ~-1 ~ {Tags:["chess.point"]}
function small_games/chess/gojp/change/white
# function small_games/chess/five/check/pj
execute if score chess.state state matches 1 run function small_games/chess/gojp/nextround
# execute if score chess.state state matches 1 run function small_games/chess/gojp/check/pj
kill @s

#/give @p minecraft:ghast_spawn_egg{EntityTag:{id:"minecraft:marker",Tags:["chess.put.white"]},CanPlaceOn:['glass'],hideFlags:63,display:{Name:'"\\u00a7a放置棋"'}} 1

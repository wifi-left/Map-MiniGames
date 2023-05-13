fill ~ ~-1 ~ ~ ~-1 ~ black_stained_glass replace glass
fill ~ 115 ~ ~ 115 ~ black_wool replace orange_wool
playsound ui.button.click player @a[team=chestgame] ~ ~ ~ 
summon marker ~ ~-1 ~ {Tags:["chess.point"]}
function small_games/chess/gojp/change/black
execute if score chess.state state matches 1 run function small_games/chess/gojp/nextround

# execute if score chess.state state matches 1 run function small_games/chess/gojp/check/pj
kill @s

#/give @p minecraft:bat_spawn_egg{EntityTag:{id:"minecraft:marker",Tags:["chess.put.black"]},CanPlaceOn:['glass'],hideFlags:63,display:{Name:'"\\u00a7a放置棋"'}} 1
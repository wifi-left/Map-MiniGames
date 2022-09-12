fill ~ ~-1 ~ ~ ~-1 ~ black_stained_glass replace glass
fill ~ 115 ~ ~ 115 ~ black_wool replace orange_wool
playsound ui.button.click player @a[team=chestgame] ~ ~ ~ 
function small_games/chess/five/check/checkblack
kill @s

#/give @p minecraft:bat_spawn_egg{EntityTag:{id:"minecraft:marker",Tags:["chess.put.black"]},CanPlaceOn:['glass'],hideFlags:63,display:{Name:'"\\u00a7a放置棋"'}} 1
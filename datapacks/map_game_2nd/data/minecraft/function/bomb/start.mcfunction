scoreboard players reset * bomb.score
scoreboard players operation boob.level board = boom.map state
execute if score bomb.allmap state matches 1 run scoreboard players set boob.level board 0
function minecraft:bomb/round/next_map
advancement revoke @a only bomb/giveup
advancement revoke @a only bomb/redo

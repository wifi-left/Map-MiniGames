team join play.total.wait @a[team=play.total,tag=total.sel.a]

execute store result score total.game board run data get storage minecraft:temp total_game_wur.b.id

tellraw @a[team=play.total] ["\n    §a§l你将进行游戏：",{"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true},"\n\n    §e游戏将会在 §c5 §e秒后开始。\n",{text:"\n游戏介绍：\n",color:gold,bold:true},{nbt:"total_game_wur.b.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game_wur.b.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n"]

execute as @a[tag=play.total] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 2 1
## Testfor if the game has been on
scoreboard players set error state 0
function minecraft:small_games/total/check_game_not_running with storage minecraft:temp total_game_wur.b

## Failure: Retry
execute if score error state matches 1.. run function minecraft:small_games/total/wur/next_game_trigger_fail/b
## Success: Start the game

execute unless score error state matches 1.. run function small_games/total/wur/start_next_game/b
scoreboard players reset error state

team join play.total @a[team=play.total.wait]

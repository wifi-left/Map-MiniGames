team join play.total.wait @a[team=play.total,tag=total.sel.b]

execute store result score total.game board run data get storage minecraft:temp total_game_wur.a.id

tellraw @a[team=play.total] ["\n    §a§l你将进行游戏：",{"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true},"\n\n    §e游戏将会在 §c5 §e秒后开始。\n",{text:"\n游戏介绍：\n",color:gold,bold:true},{nbt:"total_game_wur.a.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game_wur.a.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n"]

execute as @a[tag=play.total] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 2 1
## Testfor if the game has been on
scoreboard players set error state 0
function minecraft:small_games/total/check_game_not_running with storage minecraft:temp total_game_wur.a

## Failure: Retry
execute if score error state matches 1.. run function minecraft:small_games/total/wur/next_game_trigger_fail/a
## Success: Start the game

execute unless score error state matches 1.. run function small_games/total/wur/start_next_game/a
scoreboard players reset error state

team join play.total @a[team=play.total.wait]

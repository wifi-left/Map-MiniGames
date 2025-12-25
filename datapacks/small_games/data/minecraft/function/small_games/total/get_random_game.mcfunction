##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute store result score count.1 board run data get storage minecraft:temp random_games.total
execute store result score count.2 board run data get storage minecraft:temp random_games.games

# total.gamecount state

execute unless score count.2 board matches 1.. run return run function small_games/total/over

data modify storage minecraft:temp random.min set value 0
scoreboard players operation count.2.-1 board = count.2 board
scoreboard players remove count.2.-1 board 1
execute store result storage minecraft:temp random.max int 1 run scoreboard players get count.2.-1 board
execute store result score total.random board run function utils:random with storage minecraft:temp random
data merge storage minecraft:temp {arr_idx:{target:"storage minecraft:temp total_game",from:"storage minecraft:temp random_games.games",idx:0}}
execute store result storage minecraft:temp arr_idx.idx int 1 run scoreboard players get total.random board

scoreboard players operation count.3 board = count.1 board
scoreboard players operation count.3 board -= count.2 board
scoreboard players add count.3 board 1

execute unless entity @a[tag=merchant.player] if score count.3 board > total.gamecount board run return run function small_games/total/over

function utils:get_arr_idx_and_del with storage minecraft:temp arr_idx
# count.3 当前已经玩游戏数量
# count.2 还剩游戏数量
# count.1 总游戏数量

execute store result score total.game board run data get storage minecraft:temp total_game.id

tellraw @a[team=play.total] ["\n    §a§l下一局游戏 §e(",{"score":{"name":"count.3","objective":"board"},"color":"aqua"},"§e/",{"score":{"name":"total.gamecount","objective":"board"},"color":"aqua"},"§e)§a§l：",{"nbt":"total_game.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true},"\n\n    §e游戏将会在 §c5 §e秒后开始。\n",{text:"\n游戏介绍：\n",color:gold,bold:true},{nbt:"total_game.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n"]
title @a[team=play.total] title ["\u00a7b下一轮游戏"]
title @a[tag=play.total] subtitle [{"nbt":"total_game.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true}]

tellraw @a[team=deskgame,tag=play.total] ["\n    §a§l随机游戏§a§l：",{"nbt":"total_game.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true},"\n\n    §e游戏将会在 §c5 §e秒后开始。\n",{text:"\n游戏介绍：\n",color:gold,bold:true},{nbt:"total_game.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n"]
title @a[team=deskgame,tag=play.total] title ["\u00a7b随机游戏"]



execute as @a[tag=play.total] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 2 1
## Testfor if the game has been on
scoreboard players set error state 0
function minecraft:small_games/total/check_game_not_running with storage minecraft:temp total_game

## Failure: Retry
execute if score error state matches 1.. run function small_games/total/next_game_fail
## Success: Start the game

execute unless score error state matches 1.. run schedule function small_games/total/start_next_game 5s
scoreboard players reset error state



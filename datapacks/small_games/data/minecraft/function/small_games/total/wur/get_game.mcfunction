execute store result score count.1 board run data get storage minecraft:temp random_games.total
execute store result score count.2 board run data get storage minecraft:temp random_games.games
# 
data modify storage minecraft:temp total_game set value {id:none,name:"暂无",prefix:"",desc:"无更多游戏可供选择。"}

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

scoreboard players set 2 board 2
scoreboard players operation total.gamecount.p2 board = total.gamecount board
scoreboard players operation total.gamecount.p2 board *= 2 board

execute if score count.3 board > total.gamecount.p2 board run return fail

function utils:get_arr_idx_and_del with storage minecraft:temp arr_idx
# count.3 当前已经玩游戏数量
# count.2 还剩游戏数量
# count.1 总游戏数量
return 1
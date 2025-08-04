##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

# scoreboard players reset count.1 board
# scoreboard players reset count.2 board
# execute as @e[type=marker,tag=random_game] run scoreboard players add count.1 board 1
# scoreboard players set count.4 board 0
# execute as @a[tag=play.total] run scoreboard players add count.4 board 1
execute store result score count.1 board run data get storage minecraft:temp random_games.total
execute store result score count.2 board run data get storage minecraft:temp random_games.games

execute unless score count.2 board matches 1.. run function small_games/total/over
execute unless score count.2 board matches 1.. run return 0

data modify storage minecraft:temp random.min set value 0
scoreboard players operation count.2.-1 board = count.2 board
scoreboard players remove count.2.-1 board 1
execute store result storage minecraft:temp random.max int 1 run scoreboard players get count.2.-1 board
execute store result score total.random board run function utils:random with storage minecraft:temp random
data merge storage minecraft:temp {arr_idx:{target:"storage minecraft:temp total_game",from:"storage minecraft:temp random_games.games",idx:0}}
execute store result storage minecraft:temp arr_idx.idx int 1 run scoreboard players get total.random board
function utils:get_arr_idx_and_del with storage minecraft:temp arr_idx
# count.3 当前已经玩游戏数量
# count.2 还剩游戏数量
# count.1 总游戏数量
scoreboard players operation count.3 board = count.1 board
scoreboard players operation count.3 board -= count.2 board
scoreboard players add count.3 board 1
# GAME: storage minecraft:temp total_game
execute store result score total.game board run data get storage minecraft:temp total_game.id

# execute as @e[type=marker,tag=random_game_able,limit=1,sort=random] run tag @s add random_game_sel
# execute if score count.4 board matches ..1 run function small_games/total/neover
# execute if score count.4 board matches ..1 run tag @e[tag=random_game_sel] remove random_game_sel
# execute as @e[tag=random_game_sel] run tag @s remove random_game_able
# execute as @e[tag=random_game_sel] run scoreboard players operation total.game board = @s board
tellraw @a[team=play.total] ["\n    §a§l下一局游戏 §e(",{"score":{"name":"count.3","objective":"board"},"color":"aqua"},"§e/",{"score":{"name":"count.1","objective":"board"},"color":"aqua"},"§e)§a§l：",{"nbt":"total_game.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true},"\n    §e将会在 §c5 §e秒后开始。\n"]
title @a[team=play.total] title ["\u00a7b下一轮游戏"]
title @a[team=play.total] subtitle [{"nbt":"total_game.name",storage:"minecraft:temp","color":"light_purple","bold":true,interpret:true}]

execute as @a[tag=play.total] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 2 1
## Testfor if the game has been on
# hideseek 1
# Snow TNTRUN 2
# Snow Pick 3
# Repeling 4
# Color 5
# Block Believer 6
# Hide tool 7
# Duel 8
# Hot Potato 9
# GOLF 10
# TNTwars 11
scoreboard players set error state 0
execute if score total.game board matches 1..1 if score hide.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 2..2 if score snow.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 3..3 if score snow.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 4..4 if score repel state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 5..5 if score color.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 6..6 if score beli.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 7..7 if score hide2.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 8..8 if score duel.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 9..9 if score hotpot.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 10..10 if score golf.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 11..11 if score tnt.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 12 if score pw.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 13 if score boom.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 14 if score endwolf.state state matches 1.. run scoreboard players set error state 1
# execute if score total.game board matches 10..10 run
## Failure: Retry
execute if score error state matches 1.. run function small_games/total/next_game_fail
# execute as @e[tag=random_game_sel] run tag @s remove random_game_able
## Success: Start the game
# execute as @e[tag=random_game_sel] run tag @s remove random_game_sel

execute unless score error state matches 1.. run schedule function small_games/total/start_next_game 5s
scoreboard players reset error state



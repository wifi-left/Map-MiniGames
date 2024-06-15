##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset count.1 board
scoreboard players reset count.2 board
execute as @e[type=marker,tag=random_game] run scoreboard players add count.1 board 1
scoreboard players set count.4 board 0
execute as @a[tag=play.total] run scoreboard players add count.4 board 1
execute as @e[type=marker,tag=random_game_able] run scoreboard players add count.2 board 1
scoreboard players operation count.3 board = count.1 board
scoreboard players set 1 board 1
scoreboard players operation count.3 board -= count.2 board
scoreboard players operation count.3 board += 1 board


execute unless entity @e[type=marker,tag=random_game_able,limit=1,sort=random] run function small_games/total/over
execute as @e[type=marker,tag=random_game_able,limit=1,sort=random] run tag @s add random_game_sel
execute if score count.4 board matches ..1 run function small_games/total/neover
execute if score count.4 board matches ..1 run tag @e[tag=random_game_sel] remove random_game_sel
execute as @e[tag=random_game_sel] run tag @s remove random_game_able
execute as @e[tag=random_game_sel] run scoreboard players operation total.game board = @s board
execute as @e[tag=random_game_sel] run tellraw @a[team=play.total] ["\n    \u00a7a\u00a7l下一局游戏 \u00a7e(",{"score":{"name": "count.3","objective": "board"},"color":"aqua"},"\u00a7e/",{"score":{"name": "count.1","objective": "board"},"color":"aqua"},"\u00a7e)\u00a7a\u00a7l：",{"selector":"@s","color":"light_purple","bold":true},"\n    \u00a7e将会在 \u00a7c5 \u00a7e秒后开始。\n"]
execute as @e[tag=random_game_sel] run title @a[team=play.total] title ["\u00a7b下一轮游戏"]
execute as @e[tag=random_game_sel] run title @a[team=play.total] subtitle [{"selector":"@s","color":"light_purple","bold":true}]

execute as @e[tag=random_game_sel] as @a[tag=play.total] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 2 1
## Testfor if the game has been on
# Car 1
# Snow TNTRUN 2
# Snow Pick 3
# Repeling 4
# Color 5
# Block Believer 6
# Muder Mystery 7
# Duel 8
# Hot Potato 9
# Pool War 10
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
execute if score total.game board matches 10..10 if score pw.state state matches 1.. run scoreboard players set error state 1
execute if score total.game board matches 11..11 if score tnt.state state matches 1.. run scoreboard players set error state 1
# execute if score total.game board matches 10..10 run
## Failure: Retry
execute as @e[tag=random_game_sel] run execute if score error state matches 1.. run function small_games/total/next_game_fail
# execute as @e[tag=random_game_sel] run tag @s remove random_game_able
## Success: Start the game
execute as @e[tag=random_game_sel] run tag @s remove random_game_sel

execute unless score error state matches 1.. run schedule function small_games/total/start_next_game 5s
scoreboard players reset error state


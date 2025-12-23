tag @a[tag=merchant.player] remove play.total
scoreboard players set gametotal state 0
team join deskgame @a[tag=merchant.player]
tellraw @a[tag=merchant.player] ["\n\u00a7e\u00a7l本轮金币奖励情况\n"]
execute unless entity @a[tag=merchant.alive] run tellraw @a[tag=merchant.player] ["\u00a77无人得分"]
execute as @a[tag=merchant.alive] at @s run function minecraft:merchant/during/small_game_win_score
tellraw @a[tag=merchant.player] [""]
execute in lobby run tp @a[tag=merchant.player] 60 50 -65 0 90

execute as @a[tag=merchant.player] run scoreboard players operation @s globle.game = game.merchant globle.game

scoreboard players set desk.state state 7
scoreboard players set desk.time board 4
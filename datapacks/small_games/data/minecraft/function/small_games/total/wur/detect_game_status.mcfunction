scoreboard players set total.error temp 0
scoreboard players set error state 0

execute if score total.a.hastarted board matches 0 run scoreboard players set error state 1
execute if score total.a.hastarted board matches 2 run scoreboard players set error state 2
execute if score error state matches 0 run function minecraft:small_games/total/check_game_not_running with storage minecraft:temp total_game_wur.a

execute if score error state matches 1 run scoreboard players add total.error temp 1
execute if score error state matches 0 run function minecraft:small_games/total/wur/call_back/a

scoreboard players set error state 0
execute if score total.b.hastarted board matches 0 run scoreboard players set error state 1
execute if score total.b.hastarted board matches 2 run scoreboard players set error state 2

execute if score error state matches 0 run function minecraft:small_games/total/check_game_not_running with storage minecraft:temp total_game_wur.b
execute if score error state matches 0 run function minecraft:small_games/total/wur/call_back/b

execute if score error state matches 1 run scoreboard players add total.error temp 1

execute if score total.error temp matches 0 run function minecraft:small_games/total/next_game
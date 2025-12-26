forceload remove -57 574 -135 652
scoreboard players set miner.state state 0
execute if entity @a[team=miner,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=miner,gamemode=survival] run gamemode spectator @s
execute as @a[team=miner,gamemode=adventure] run gamemode spectator @s
execute as @a[team=miner,gamemode=!creative] run function minecraft:miner/join
schedule clear minecraft:miner/map/reset_map
schedule clear minecraft:miner/map/start_random_point
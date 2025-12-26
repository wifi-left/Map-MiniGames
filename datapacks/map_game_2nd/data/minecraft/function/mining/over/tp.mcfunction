scoreboard players set mining.state state 0
execute if entity @a[team=mining,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=mining,gamemode=survival] run gamemode spectator @s
execute as @a[team=mining,gamemode=adventure] run gamemode spectator @s
execute as @a[team=mining,gamemode=!creative] run function minecraft:mining/join
schedule clear minecraft:mining/map/reset_map
schedule clear minecraft:mining/map/start_random_point
schedule clear minecraft:mining/map/random_block/1 
schedule clear minecraft:mining/map/random_block/2 
schedule clear minecraft:mining/map/random_block/3 
schedule clear minecraft:mining/map/random_block/4 
schedule clear minecraft:mining/map/random_block/5 
schedule clear minecraft:mining/map/random_block/6 
execute in airworld run forceload remove -199 607 -167 639

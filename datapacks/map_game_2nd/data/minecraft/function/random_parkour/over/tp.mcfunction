forceload remove 10 211 104 247

scoreboard players set random_parkour.state state 0
execute if entity @a[team=random_parkour,tag=play.total] run function small_games/total/next_game
execute as @a[team=random_parkour,gamemode=!creative] run gamemode spectator @s
execute as @a[team=random_parkour,gamemode=!creative] run function minecraft:random_parkour/join
schedule clear minecraft:random_parkour/map/reset_map
schedule clear minecraft:random_parkour/map/start_random_point
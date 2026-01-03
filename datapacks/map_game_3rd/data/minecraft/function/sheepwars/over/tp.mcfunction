scoreboard players set sheepwars.state state 0

team join wait.sheepwars @a[team=play.sheepwars.a]
team join wait.sheepwars @a[team=play.sheepwars.b]

gamemode adventure @a[team=wait.sheepwars]

execute if entity @a[team=wait.sheepwars,tag=play.total] run function minecraft:small_games/total/next_game_trigger

execute as @a[team=wait.sheepwars] in airworld run function minecraft:sheepwars/join
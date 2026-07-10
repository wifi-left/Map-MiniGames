scoreboard players set color.state state 0

gamemode adventure @a[gamemode=spectator,team=play.color]
gamemode adventure @a[gamemode=spectator,team=wait.color]

execute if entity @a[team=play.color,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[gamemode=adventure,team=wait.color] run function color/join
execute as @a[gamemode=adventure,team=play.color] run function color/join
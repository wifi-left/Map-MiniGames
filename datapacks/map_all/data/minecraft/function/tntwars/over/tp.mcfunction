scoreboard players set tnt.state state 0
execute if entity @a[team=play.tntwars,tag=play.total] run function small_games/total/next_game

execute as @a[team=play.tntwars,gamemode=spectator] at @s run function tntwars/join
#


forceload remove 253 566 -132 181
schedule clear minecraft:blaze/over/tp
schedule clear minecraft:blaze/start_after_reset
schedule clear minecraft:blaze/reset
scoreboard players set blaze.state state 0

execute if entity @a[team=blaze.wait,tag=play.total] run function minecraft:small_games/total/next_game_trigger

execute as @a[team=blaze.wait,gamemode=!creative] run function minecraft:blaze/join
execute as @a[team=blaze.team.a] run function minecraft:blaze/join
execute as @a[team=blaze.team.b] run function minecraft:blaze/join
scoreboard players reset * blaze.trigger
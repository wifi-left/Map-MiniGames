scoreboard players set finder.state state 0
execute if entity @a[team=finder,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=finder,gamemode=survival] run gamemode spectator @s
execute as @a[team=finder,gamemode=adventure] run gamemode spectator @s
execute as @a[team=finder,gamemode=!creative] run function minecraft:finder/join
forceload remove 148 519 20 661
kill @e[tag=finder.eggs.interaction]
kill @e[tag=finder.eggs.display]
kill @e[tag=finder.eggs.point]
scoreboard players set mutouren.state state 0
execute if entity @a[team=mutouren,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=mutouren,gamemode=survival] run gamemode spectator @s
execute as @a[team=mutouren,gamemode=adventure] run gamemode spectator @s
execute as @a[team=mutouren,gamemode=!creative] run function minecraft:mutouren/join
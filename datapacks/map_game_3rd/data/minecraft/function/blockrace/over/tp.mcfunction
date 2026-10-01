scoreboard players set blockrace.state state 0
execute if entity @a[team=blockrace,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=blockrace,gamemode=survival] run gamemode spectator @s
execute as @a[team=blockrace,gamemode=adventure] run gamemode spectator @s
execute as @a[team=blockrace,gamemode=!creative] run function minecraft:blockrace/join
team modify blockrace friendlyFire false

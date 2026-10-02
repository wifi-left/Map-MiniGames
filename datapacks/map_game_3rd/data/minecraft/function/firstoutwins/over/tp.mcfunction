scoreboard players set firstoutwins.state state 0
execute if entity @a[team=firstoutwins,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=firstoutwins,gamemode=survival] run gamemode spectator @s
execute as @a[team=firstoutwins,gamemode=adventure] run gamemode spectator @s
execute as @a[team=firstoutwins,gamemode=!creative] run function minecraft:firstoutwins/join
team modify firstoutwins friendlyFire false

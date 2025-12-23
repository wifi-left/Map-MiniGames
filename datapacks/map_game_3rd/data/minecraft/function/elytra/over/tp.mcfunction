scoreboard players set elytra.state state 0
execute if entity @a[team=elytra,tag=play.total] run function small_games/total/next_game
execute as @a[team=elytra,gamemode=survival] run gamemode spectator @s
execute as @a[team=elytra,gamemode=adventure] run gamemode spectator @s
execute as @a[team=elytra,gamemode=!creative] run function minecraft:elytra/join
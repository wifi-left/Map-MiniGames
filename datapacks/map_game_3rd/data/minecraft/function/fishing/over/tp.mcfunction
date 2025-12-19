execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
scoreboard players set fishing.state state 0
execute if entity @a[team=fishing,tag=play.total] run function small_games/total/next_game
execute as @a[team=fishing,gamemode=survival] run gamemode spectator @s
execute as @a[team=fishing,gamemode=adventure] run gamemode spectator @s
execute as @a[team=fishing,gamemode=!creative] run function minecraft:fishing/join
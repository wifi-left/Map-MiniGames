execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
scoreboard players set fishing.state state 0
execute if entity @a[team=fishing,tag=play.total] run function small_games/total/next_game
execute as @a[team=fishing,gamemode=survival] run gamemode spectator @s
execute as @a[team=fishing,gamemode=adventure] run gamemode spectator @s
execute as @a[team=fishing,gamemode=!creative] run function minecraft:fishing/join
schedule clear minecraft:fishing/map/reset_map
schedule clear minecraft:fishing/map/start_random_point
execute in airworld run forceload remove -199 607 -167 639

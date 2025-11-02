forceload remove -57 574 -135 652
scoreboard players set pillar.state state 0
execute if entity @a[team=pillar,tag=play.total] run function small_games/total/next_game
execute as @a[team=pillar,gamemode=survival] run gamemode spectator @s
execute as @a[team=pillar,gamemode=adventure] run gamemode spectator @s
execute as @a[team=pillar,gamemode=!creative] run function minecraft:pillar/join
team modify pillar friendlyFire false
schedule clear minecraft:pillar/map/reset_map
schedule clear minecraft:pillar/map/start_random_point
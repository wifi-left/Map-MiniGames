##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode adventure @a[team=car.play,gamemode=!creative]
gamemode adventure @a[team=car.wait,gamemode=!creative]
execute as @a[tag=car.win,tag=play.total] run function minecraft:small_games/total/win_score {score:1}
# execute if entity @a[team=car.wait,tag=play.total] run function small_games/total/next_game
execute if entity @a[team=car.play,tag=play.total] run function small_games/total/next_game
execute as @a[team=car.wait,gamemode=!creative] run function car_race/join
execute as @a[team=car.play,gamemode=!creative] run function car_race/join
scoreboard players set car.state state 0
kill @e[tag=GCAR]
scoreboard players reset * car.rounds
tag @a remove car.win


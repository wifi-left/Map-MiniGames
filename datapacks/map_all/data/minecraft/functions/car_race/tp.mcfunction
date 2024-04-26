gamemode adventure @a[team=car.play,gamemode=!creative]
gamemode adventure @a[team=car.wait,gamemode=!creative]
scoreboard players add @a[tag=car.win,tag=play.total] score 1
# execute if entity @a[team=car.wait,tag=play.total] run function small_games/total/next_game
execute if entity @a[team=car.play,tag=play.total] run function small_games/total/next_game
execute as @a[team=car.wait,gamemode=!creative] run function car_race/join
execute as @a[team=car.play,gamemode=!creative] run function car_race/join
scoreboard players set car.state state 0
kill @e[tag=GCAR]
scoreboard players reset * car.rounds
tag @a remove car.win
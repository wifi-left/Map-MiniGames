
execute as @a[team=hide.wait2] run function hide2/join
execute as @a[team=hide.runner] run function hide2/join
execute as @a[team=hide.killer] run function hide2/join
execute if entity @a[team=hide.wait2,tag=play.total] run function small_games/total/next_game
gamemode adventure @a[team=hide.wait2]

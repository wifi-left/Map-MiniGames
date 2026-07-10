execute if entity @a[tag=merchant.player] run return run function minecraft:small_games/total/get_random_game
execute if score total.game_mode state matches 0 run function minecraft:small_games/total/get_random_game
execute if score total.game_mode state matches 1 run function minecraft:small_games/total/wur/chose_game
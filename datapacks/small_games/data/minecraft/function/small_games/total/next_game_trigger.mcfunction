execute if entity @a[tag=merchant.player] run return run function minecraft:small_games/total/next_game
execute if score gametotal state matches 1..1000 if score total.game_mode state matches 0 run function minecraft:small_games/total/next_game
execute if score gametotal state matches 1..1000 if score total.game_mode state matches 1 run function minecraft:small_games/total/wur/one_game_end
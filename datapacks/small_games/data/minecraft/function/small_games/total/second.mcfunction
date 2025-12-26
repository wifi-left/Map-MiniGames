##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set count.4 board 0
execute as @a[tag=play.total] run scoreboard players add count.4 board 1
execute if score gametotal state matches 1..1000 if score count.4 board matches ..1 run function small_games/total/neover

execute if score gametotal state matches 1..1000 if score total.game_mode state matches 1 run function minecraft:small_games/total/wur/second

# execute if score count.4 board matches ..1 run function small_games/total/neover
effect give @a[team=play.total] resistance 2 25 true
effect give @a[team=play.total] water_breathing 2 25 true
effect give @a[team=wait.total] resistance 2 25 true
effect give @a[team=mutouren] resistance 2 25 true
effect give @a[team=mutouren] night_vision 12 25 true
execute if score mutouren.state state matches 2 run function minecraft:mutouren/step/wait_start
execute if score mutouren.state state matches 3 run function minecraft:mutouren/step/wait_time
execute if score mutouren.state state matches 4 run function minecraft:mutouren/step/wait_freeze
execute if score mutouren.state state matches 3 run function minecraft:mutouren/testfor

scoreboard players operation mutouren.temp temp = mutouren.time tick
scoreboard players set 5 board 5
scoreboard players operation mutouren.temp temp %= 5 board
execute if score mutouren.state state matches 3 if score mutouren.temp temp matches 0 run function minecraft:mutouren/show_rank
# execute in airworld run fill -57 -63 652 -135 -62 574 air
title @s actionbar ["\u00a7c时间结束。"]
scoreboard players set desk.time board -1
execute if score desk.state state matches 1 run function minecraft:desk/russia/next_player
execute if score desk.state state matches 2 run function minecraft:desk/russia/new_round
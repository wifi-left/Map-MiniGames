scoreboard players add sheepwars.time tick 1

scoreboard players set 2 board 2
scoreboard players set 5 board 5
scoreboard players set 10 board 10
scoreboard players operation temp temp = sheepwars.time tick
scoreboard players operation temp temp %= 2 board
execute if score temp temp matches 1 run function minecraft:sheepwars/give_items/2

scoreboard players operation temp temp = sheepwars.time tick
scoreboard players operation temp temp %= 5 board
execute if score temp temp matches 1 run function minecraft:sheepwars/give_items/5

scoreboard players operation temp temp = sheepwars.time tick
scoreboard players operation temp temp %= 10 board
execute if score temp temp matches 1 run function minecraft:sheepwars/give_items/10

function minecraft:sheepwars/testfor

title @a[team=wait.sheepwars] actionbar ["\u00a7b游戏已进行 ",{score:{name:"sheepwars.time",objective:"tick"},color:green},"\u00a7as"]
title @a[team=play.sheepwars.a] actionbar ["\u00a7b游戏已进行 ",{score:{name:"sheepwars.time",objective:"tick"},color:green},"\u00a7as"]
title @a[team=play.sheepwars.b] actionbar ["\u00a7b游戏已进行 ",{score:{name:"sheepwars.time",objective:"tick"},color:green},"\u00a7as"]

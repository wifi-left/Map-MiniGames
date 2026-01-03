scoreboard players remove sheepwars.time tick 1
execute if score sheepwars.time tick matches 0 run return run function minecraft:sheepwars/step/timeout/true_start

execute if score sheepwars.time tick matches ..5 run tellraw @a[tag=sheepwars.msg] ["\u00a7e游戏将在 ",{score:{name:"sheepwars.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute if score sheepwars.time tick matches ..5 as @a[tag=sheepwars.msg] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
title @a[team=sheepwars] actionbar ["\u00a7e游戏将在 ",{score:{name:"sheepwars.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]

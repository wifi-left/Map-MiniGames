scoreboard players remove one_arrow.time tick 1
execute if score one_arrow.time tick matches 0 run return run function minecraft:one_arrow/step/timeout/true_start
execute if score one_arrow.time tick matches ..5 run tellraw @a[team=one_arrow] ["\u00a7e游戏将在 ",{score:{name:"one_arrow.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute if score one_arrow.time tick matches ..5 as @a[team=one_arrow] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
title @a[team=one_arrow] actionbar ["\u00a7e游戏将在 ",{score:{name:"one_arrow.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
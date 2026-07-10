scoreboard players remove killer.time tick 1
execute if score killer.time tick matches 0 run return run function minecraft:killerever/step/true_start
tellraw @a[team=play.killer] ["\u00a7e游戏将在 ",{score:{name:"killer.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
title @a[team=play.killer] actionbar ["\u00a7e游戏将在 ",{score:{name:"killer.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=play.killer] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
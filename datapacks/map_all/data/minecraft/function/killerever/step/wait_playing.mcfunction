scoreboard players remove killer.time tick 1
execute if score killer.time tick matches 0 run return run function minecraft:killerever/step/final_start
title @a[team=play.killer] actionbar ["\u00a7e游戏将在 ",{score:{name:"killer.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后进入最终环节。"]
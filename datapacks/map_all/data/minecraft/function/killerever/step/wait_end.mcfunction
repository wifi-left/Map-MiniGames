scoreboard players remove killer.time tick 1
execute if score killer.time tick matches 0 run return run function minecraft:killerever/step/final
effect give @a[team=play.killer,gamemode=adventure] glowing 2 0 true
title @a[team=play.killer] actionbar ["\u00a7e游戏将在 ",{score:{name:"killer.time",objective:"tick"},color:red},"\u00a7cs \u00a7e结束。"]
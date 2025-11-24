scoreboard players remove killer.time tick 1
execute if score killer.time tick matches 0 run return run function minecraft:killerever/step/give_item
title @a[team=play.killer] actionbar ["\u00a7e杀手将在 ",{score:{name:"killer.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后获得Ta的刀。"]
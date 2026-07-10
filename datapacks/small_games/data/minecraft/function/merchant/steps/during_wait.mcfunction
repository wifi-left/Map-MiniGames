scoreboard players remove desk.time board 1
execute if score desk.time board matches 0 run return run function minecraft:merchant/steps/timeout/continue
title @a[team=deskgame] actionbar ["\u00a7e游戏将在",{score:{name:"desk.time",objective:"board"},color:red},"\u00a7cs\u00a7e后继续"]
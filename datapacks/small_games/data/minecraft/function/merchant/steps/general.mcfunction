execute if score desk.time board matches 1.. run scoreboard players remove desk.time board 1
execute if score desk.time board matches 0 run return run function minecraft:merchant/steps/timeout/general
execute unless entity @a[gamemode=adventure,team=deskgame] run function minecraft:merchant/steps/timeout/general
execute if score desk.state state matches 2 as @a[gamemode=adventure,team=deskgame] run function minecraft:merchant/player/get_item
title @a[team=deskgame] actionbar ["\u00a7b\u00a7l倒计时：",{score:{name:"desk.time",objective:board},color:yellow},"\u00a7es"]
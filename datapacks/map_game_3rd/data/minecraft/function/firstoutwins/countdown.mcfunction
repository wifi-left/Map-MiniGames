scoreboard players remove firstoutwins.time board 1
execute if score firstoutwins.time board matches 0 run return run function minecraft:firstoutwins/timeout

title @a[team=firstoutwins] actionbar ["\u00a7e倒计时：",{score:{name:"firstoutwins.time",objective:board},color:"red"},"\u00a7cs"]
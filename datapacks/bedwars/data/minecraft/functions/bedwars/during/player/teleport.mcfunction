tp @s[team=bw.yellow] -383 30 210 -90 0
tp @s[team=bw.blue] -303 30 288 -180 0
tp @s[team=bw.green] -225 30 208 90 0
tp @s[team=bw.red] -305 30 130 0 0
title @s clear
tellraw @s ["\u00a7e你已经重生！"]
tag @s remove bw.fhing
gamemode adventure @s
clear @s
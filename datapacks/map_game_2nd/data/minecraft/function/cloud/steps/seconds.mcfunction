
execute if score cloud.countdown board matches 1.. if score sw.state state matches 2..99 run scoreboard players remove cloud.countdown board 1

execute if score sw.state state matches 2..99 if score cloud.countdown board matches 1.. if score cloud.step board matches 1 run title @a[tag=sw.msg] actionbar ["\u00a7a即将\u00a7e开始游戏\u00a7a：",{"score":{"name": "cloud.countdown","objective": "board"},"color": "gold"},"\u00a76s"]
execute if score sw.state state matches 2..99 if score cloud.countdown board matches 1..5 if score cloud.step board matches 1 run tellraw @a[tag=sw.msg] ["\u00a7e游戏机将在",{"score":{"name": "cloud.countdown","objective": "board"},"color": "red"},"\u00a7cs\u00a7e后开始游戏"]
execute if score sw.state state matches 2..99 if score cloud.countdown board matches 1..5 if score cloud.step board matches 1 as @a[tag=sw.msg] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute if score sw.state state matches 2..99 if score cloud.countdown board matches 1.. if score cloud.step board matches 2..4 run title @a[tag=sw.msg] actionbar ["\u00a7a即将\u00a7d补充箱子\u00a7a：",{"score":{"name": "cloud.countdown","objective": "board"},"color": "gold"},"\u00a76s"]
execute if score sw.state state matches 2..99 if score cloud.countdown board matches 1.. if score cloud.step board matches 5.. run title @a[tag=sw.msg] actionbar ["\u00a7a即将\u00a7c结束游戏\u00a7a：",{"score":{"name": "cloud.countdown","objective": "board"},"color": "gold"},"\u00a76s"]

execute if score sw.state state matches 2..99 if score cloud.countdown board matches 0 if score cloud.step board matches 2..4 run function minecraft:cloud/steps/fill_chest
execute if score sw.state state matches 2..99 if score cloud.countdown board matches 0 if score cloud.step board matches 1 run function minecraft:cloud/steps/start
execute if score sw.state state matches 2..99 if score cloud.countdown board matches 0 if score cloud.step board matches 5 run function minecraft:cloud/steps/fill_chest_last
execute if score sw.state state matches 2..99 if score cloud.countdown board matches 0 if score cloud.step board matches 6 run function minecraft:cloud/steps/over


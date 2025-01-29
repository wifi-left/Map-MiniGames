execute if score endwolf.round board matches ..0 run function minecraft:endless_wolf/over/normal
execute if score endwolf.state state matches 5.. run return 0
scoreboard players operation endwolf.time board = endwolf.day state
# function minecraft:endless_wolf/
clear @a[team=play.endwolf] *[custom_data~{vampire:true}]
time set day
scoreboard players set endwolf.state state 1
title @a[team=play.endwolf] title ["\u00a7f天亮了"]
title @a[team=play.endwolf] subtitle ["\u00a76吸血鬼惧怕的阳光到来了！"]
tellraw @a[team=play.endwolf] ["\u00a7f天亮了。\u00a76距离幸存者得救还剩下 ",{"score": {"name": "endwolf.round","objective": "board"},"color":"yellow"},"\u00a76 天。"]
tellraw @a[team=wait.endwolf] ["\u00a7f天亮了。\u00a76距离幸存者得救还剩下 ",{"score": {"name": "endwolf.round","objective": "board"},"color":"yellow"},"\u00a76 天。"]
scoreboard players remove endwolf.round board 1

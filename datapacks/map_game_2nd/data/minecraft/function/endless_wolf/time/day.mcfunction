##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score endwolf.round board matches ..0 run function minecraft:endless_wolf/over/normal
execute if score endwolf.state state matches 5.. run return 0
scoreboard players operation endwolf.time board = endwolf.day state
# function minecraft:endless_wolf/
clear @a[team=play.endwolf] *[]
function minecraft:endless_wolf/vampire_item
time set day
scoreboard players set endwolf.state state 1
title @a[team=play.endwolf] title ["\u00a7f天亮了"]
title @a[team=play.endwolf] subtitle ["\u00a76吸血鬼惧怕的阳光到来了！"]
tellraw @a[team=play.endwolf] ["§f天亮了。§6距离幸存者得救还剩下 ",{"score":{"name":"endwolf.round","objective":"board"},"color":"yellow"},"§6 天。"]
tellraw @a[team=wait.endwolf] ["§f天亮了。§6距离幸存者得救还剩下 ",{"score":{"name":"endwolf.round","objective":"board"},"color":"yellow"},"§6 天。"]
scoreboard players remove endwolf.round board 1


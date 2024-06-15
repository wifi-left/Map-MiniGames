##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set battle.state state 4
# 选择
# scoreboard players set battle.score.r board 0
# scoreboard players set battle.score.b board 0
scoreboard players set battle.time board 6
# fill 145 27 -341 143 27 -339 white_wool
fill 146 39 -324 142 35 -324 minecraft:light_blue_stained_glass keep
fill 142 39 -356 146 35 -356 minecraft:red_stained_glass keep

tag @a[team=wait.battle] add battle.sel
tag @a[team=play.battle.r] add battle.sel
tag @a[team=play.battle.b] add battle.sel
# tellraw @a[tag=battle.sel] ["\u00a7e回合即将在\u00a7c5\u00a7e秒后开始。"]
title @a[tag=battle.sel] title ["\u00a76回合即将开始"]
title @a[tag=battle.sel] subtitle ["\u00a7bPreparing Fighting!"]
# execute as @a[tag=battle.sel] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tag @a remove battle.sel

execute positioned 144 30 -340 run kill @e[type=item,distance=0..50]


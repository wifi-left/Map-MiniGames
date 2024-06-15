##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set battle.state state 1
# 选择

scoreboard players set battle.time board 61
fill 145 27 -341 143 27 -339 white_wool
tag @a[team=wait.battle] add battle.sel
tag @a[team=play.battle.r] add battle.sel
tag @a[team=play.battle.b] add battle.sel
tellraw @a[tag=battle.sel] ["\u00a7e回合开始。"]
title @a[tag=battle.sel] title ["\u00a76回合开始"]
title @a[tag=battle.sel] subtitle ["\u00a7bStart Fighting!"]
execute as @a[tag=battle.sel] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tag @a remove battle.sel
fill 146 39 -324 142 35 -324 air destroy
fill 142 39 -356 146 35 -356 air destroy
execute positioned 144 35 -340 run kill @e[type=item,distance=0..40]
function battle/ranpotion
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1 1

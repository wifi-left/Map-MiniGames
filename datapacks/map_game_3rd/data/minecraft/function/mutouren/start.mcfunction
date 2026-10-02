tag @a[tag=mutouren.win] remove mutouren.win

# /setblock -96 153 610
effect give @a[gamemode=!creative,team=mutouren] slowness 5 255 true
execute in parkourworld run tp @a[gamemode=!creative,team=mutouren] -6 -55 421 90 0
scoreboard players set mutouren.state state 1
clear @a[gamemode=adventure,team=mutouren]
execute in parkourworld run function minecraft:mutouren/resetover
tag @a remove mutouren.win_true
execute in parkourworld run fill -4 -53 423 -4 -55 419 minecraft:oak_fence
kill @e[type=pillager,tag=mutouren.pillager]
tp @a[gamemode=!creative,team=mutouren] -6 -55 421 -90 0
team modify mutouren collisionRule never
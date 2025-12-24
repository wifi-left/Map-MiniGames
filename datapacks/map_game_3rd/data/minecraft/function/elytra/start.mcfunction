tag @a[tag=elytra.win] remove elytra.win

# /setblock -96 153 610
execute in parkourworld run tp @a[gamemode=!creative,team=elytra] 94 100 352 -90 0
scoreboard players set elytra.state state 1
clear @a[gamemode=adventure,team=elytra]
execute in parkourworld run function minecraft:elytra/resetover
tag @a remove elytra.win_true
execute in parkourworld run fill 98 99 347 98 103 357 minecraft:barrier
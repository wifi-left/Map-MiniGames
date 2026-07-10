tag @a[tag=finder.win] remove finder.win

# /setblock -96 153 610
tp @a[gamemode=!creative,team=finder] 74 -44 633 180 0
scoreboard players set finder.state state 1
clear @a[gamemode=adventure,team=finder]
forceload add 148 519 20 661
schedule function minecraft:finder/reset 1s
# execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
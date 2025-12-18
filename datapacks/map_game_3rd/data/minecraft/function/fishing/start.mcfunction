tag @a[tag=fishing.win] remove fishing.win

# /setblock -96 153 610
tp @a[gamemode=!creative,team=fishing] -212 -45 351 -90 0
scoreboard players set fishing.state state 1
clear @a[gamemode=adventure,team=fishing]
function minecraft:fishing/resetover
execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
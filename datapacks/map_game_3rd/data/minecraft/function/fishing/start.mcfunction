tag @a[tag=fishing.win] remove fishing.win
tag @a[tag=fishing.random_team] remove fishing.random_team
tag @a[team=fishing,gamemode=adventure] add fishing.random_team
# /setblock -96 153 610
tp @a[gamemode=!creative,team=fishing] -212 -45 351 -90 0
scoreboard players set fishing.state state 1
clear @a[gamemode=!creative,team=fishing]
function minecraft:fishing/resetover
execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
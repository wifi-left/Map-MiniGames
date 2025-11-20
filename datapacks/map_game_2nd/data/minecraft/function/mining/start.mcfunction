tag @a[tag=mining.win] remove mining.win
tag @a[tag=mining.random_team] remove mining.random_team
tag @a[team=mining,gamemode=adventure] add mining.random_team
execute in airworld run forceload add -199 607 -167 639

schedule function minecraft:mining/map/reset_m 2s replace
# /setblock -96 153 610
tp @a[gamemode=!creative,team=mining] -183 -26 623 0 0
scoreboard players set mining.state state 1

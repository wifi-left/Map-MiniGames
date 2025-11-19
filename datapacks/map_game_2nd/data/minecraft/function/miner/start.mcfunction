tag @a[tag=miner.win] remove miner.win
tag @a[tag=miner.random_team] remove miner.random_team
tag @a[team=miner,gamemode=adventure] add miner.random_team
execute in airworld run forceload add -57 574 -135 652

schedule function minecraft:miner/map/reset_m 2s replace
# /setblock -96 153 610
tp @a[gamemode=!creative,team=miner] -96 154 610 0 0
scoreboard players set miner.state state 1

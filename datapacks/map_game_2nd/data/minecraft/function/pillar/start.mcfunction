tag @a[tag=pillar.random_team] remove pillar.random_team
tag @a[team=pillar,gamemode=adventure] add pillar.random_team
execute in airworld run forceload add -57 574 -135 652

schedule function minecraft:pillar/map/reset_m 2s replace
tp @a[gamemode=!creative,team=pillar] -96 42 610 0 0
scoreboard players set pillar.state state 1
scoreboard players set pillar.remove.now board -1

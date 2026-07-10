tag @a[tag=random_parkour.win] remove random_parkour.win
# execute as @a[team=random_parkour,gamemode=adventure] in parkourworld run tp @s 11 -61 229 -90 0
execute as @a[team=random_parkour,gamemode=adventure] in parkourworld run tp @s 11 -54 229 -90 0
 
execute in parkourworld run forceload add 10 211 104 247

schedule function minecraft:random_parkour/map/reset_m 1s replace
# /setblock -96 153 610
scoreboard players set random_parkour.state state 1
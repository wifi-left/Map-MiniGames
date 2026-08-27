#area1: 348 -45 -234 348 -45 -215
#area2: 348 -45 -212 348 -45 -193
#area3: 348 -45 -190 348 -45 -171
#area4: 348 -45 -168 348 -45 -149
#area5: 348 -45 -146 348 -45 -127
execute store result score temp.z temp run data get entity @s Pos[2]
execute if score temp.z temp matches -234..-127 in overworld run return run tp @s 351 -44 ~
function minecraft:bridge_practice/join
clear @s
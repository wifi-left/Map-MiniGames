title @s title ["\u00a7c你死了"]
title @s subtitle ["没有人救援你..."]
tellraw @a[team=stronghold] [{selector:"@s"},"\u00a7c 死了。"]

gamemode spectator @s
execute in lobby run tp @s 290 -55 291 90 0
tag @s remove stronghold.alive
function minecraft:stronghold/death/clear_point
tag @s remove stronghold.died.waiting
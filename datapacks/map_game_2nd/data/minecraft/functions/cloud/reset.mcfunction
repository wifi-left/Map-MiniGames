scoreboard players set cloud.reset board 0
forceload add 599 266 780 442
kill @e[tag=sw.marker,type=marker]
schedule clear minecraft:cloud/maps/ungrassed
function minecraft:cloud/maps/ungrassed
title @a[team=wait.sw] times 0 30 0
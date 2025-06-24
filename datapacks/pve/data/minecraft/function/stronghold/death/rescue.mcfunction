function minecraft:stronghold/death/find_deathpoint
tp @s @e[tag=stronghold.flagged,limit=1]
function minecraft:stronghold/death/clear_point
gamemode adventure @s
damage @s 10 magic
title @s title ["\u00a7a你复活了"]
title @s subtitle ["你被救活了"]
tag @s add stronghold.alive
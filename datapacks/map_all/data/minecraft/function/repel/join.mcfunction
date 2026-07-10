## Repeling War
execute in overworld run tp @s -33 4 -11 0 0
clear @s
gamemode adventure @s
team leave @s
tellraw @a ["§a§l[MESSAGE] §7",{"selector":"@s","color":"yellow"},"§7 加入了 §eRepeling War§7。"]

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
function player:full_health
team join wait.repel @s
effect clear @s

execute if score repel state matches 1.. run return run function minecraft:repel/spec
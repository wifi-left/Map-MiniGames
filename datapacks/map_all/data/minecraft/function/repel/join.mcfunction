## Repeling War
execute in overworld run tp @s -33 4 -11 0 0
clear @s
gamemode adventure @s
team leave @s
tellraw @a ["§a§l[MESSAGE] §7",{"selector":"@s","color":"yellow"},"§7 加入了 §eRepeling War§7。"]

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

team join wait.repel @s
effect clear @s
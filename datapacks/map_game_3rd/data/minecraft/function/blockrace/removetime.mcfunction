scoreboard players set blockrace.time board 30
execute as @a[team=blockrace] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0 1
tellraw @a[team=blockrace] ["\n\n\u00a7e已有4人抵达终点，时间缩短到\u00a7c30s\u00a7e。\n"]
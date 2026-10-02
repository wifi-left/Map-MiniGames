scoreboard players set firstoutwins.time board 15
execute as @a[team=firstoutwins] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0 1
tellraw @a[team=firstoutwins] ["\n\n\u00a7e已有4人完成目标，时间缩短到\u00a7c15s\u00a7e。\n"]
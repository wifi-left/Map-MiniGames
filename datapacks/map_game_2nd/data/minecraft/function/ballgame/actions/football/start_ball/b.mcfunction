title @a[gamemode=adventure,team=ballgame] subtitle ["\u00a7a由\u00a7cB队伍\u00a7a发球！"]
tellraw @a[gamemode=adventure,team=ballgame] ["\u00a7a本次由\u00a7cB队伍\u00a7a发球！"]
tag @a[team=ballgame,gamemode=adventure,tag=ball.teamb,limit=1,sort=nearest] add ball.sel

execute at @s as @a[tag=ball.sel] run tp @s ^ ^ ^-3
execute at @s as @a[tag=ball.sel] run rotate @s ~ ~
title @a[tag=ball.sel] title ["\u00a76请发球"]
title @a[tag=ball.sel] subtitle ["\u00a7e你该发球了"]
execute as @a[tag=ball.sel] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
execute as @a[tag=ball.sel] run function minecraft:ballgame/actions/football/give_boots

tag @a remove ball.sel

scoreboard players set ball.time board 31

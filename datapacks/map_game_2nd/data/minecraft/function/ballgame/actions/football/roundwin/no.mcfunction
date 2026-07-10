tellraw @a[team=ballgame] ["\n\u00a76时间到了，平局。\n"]
title @a[team=ballgame] title ["\u00a76时间到了，平局。"]
title @a[team=ballgame] subtitle ["本轮结束"]
execute as @a[team=ballgame] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1

scoreboard players set ball.lastwin board -1
function minecraft:ballgame/actions/football/roundwin/all

tellraw @a[team=ballgame] ["\n\u00a7cB队伍\u00a7a获得一分！\n"]
title @a[team=ballgame] title ["\u00a7cB队伍\u00a7a获得一分！"]
title @a[team=ballgame] subtitle ["本轮结束"]
execute as @a[team=ballgame] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
scoreboard players add ball.score.b board 1

scoreboard players set ball.lastwin board 2
function minecraft:ballgame/actions/dodgeball/roundwin/all

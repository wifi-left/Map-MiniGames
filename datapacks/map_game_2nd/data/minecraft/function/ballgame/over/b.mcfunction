tellraw @a[team=ballgame] ["\n\u00a76 游戏结束。\n \u00a76获胜队伍：\u00a7c[队伍B]\n ",{selector:"@a[tag=ball.teamb]"},"\n"]
title @a[team=ballgame] title ["\u00a7c游戏结束"]
title @a[tag=ball.teamb] title ["\u00a76你们赢了"]
title @a[team=ballgame] subtitle ["\u00a7c[队伍B] \u00a7e获得胜利"]
execute as @a[tag=ball.teamb,tag=play.total] run function minecraft:small_games/total/win_score {score:2}

function minecraft:ballgame/over/all
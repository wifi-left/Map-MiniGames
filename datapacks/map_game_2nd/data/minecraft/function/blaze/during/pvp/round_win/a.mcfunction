tellraw @a[tag=blaze.player] ["\n\u00a7e 本局结束。\n \u00a76获胜队伍：\u00a79[队伍A]\n"]
title @a[tag=blaze.player] title ["\u00a7e本局结束"]
title @a[team=blaze.team.a] title ["\u00a76本局你们赢了"]
title @a[tag=blaze.player] subtitle ["\u00a79[队伍A] \u00a7a获得一分"]

scoreboard players add blaze.score.a board 1
function minecraft:blaze/during/check_or_next
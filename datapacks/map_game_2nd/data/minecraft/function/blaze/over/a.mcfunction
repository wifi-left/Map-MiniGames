function minecraft:blaze/during/tag_blaze_players
tellraw @a[tag=blaze.player] ["\n\u00a76 游戏结束。\n \u00a76获胜队伍：\u00a79[队伍A]\n ",{selector:"@a[team=blaze.team.a]"},"\n"]
title @a[tag=blaze.player] title ["\u00a7c游戏结束"]
title @a[team=blaze.team.a] title ["\u00a76你们赢了"]
title @a[tag=blaze.player] subtitle ["\u00a79[队伍A] \u00a7e获得胜利"]
function minecraft:blaze/over/all
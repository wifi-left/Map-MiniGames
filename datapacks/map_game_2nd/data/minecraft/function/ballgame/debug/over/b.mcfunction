function minecraft:blaze/during/tag_blaze_players
tellraw @a[tag=blaze.player] ["\n\u00a76 游戏结束。\n \u00a76获胜队伍：\u00a7c[队伍B]\n ",{selector:"@a[team=blaze.team.b]"},"\n"]
title @a[tag=blaze.player] title ["\u00a7c游戏结束"]
title @a[team=blaze.team.b] title ["\u00a76你们赢了"]
title @a[tag=blaze.player] subtitle ["\u00a7c[队伍B] \u00a7e获得胜利"]
execute as @a[team=blaze.team.b,tag=play.total] run function minecraft:small_games/total/win_score {score:3}

function minecraft:blaze/over/all
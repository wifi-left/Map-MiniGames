function minecraft:blaze/during/tag_blaze_players
tellraw @a[tag=blaze.player] ["\n\u00a76 游戏结束。\n \u00a76游戏结果：\u00a7a\u00a7l平局\n"]
title @a[tag=blaze.player] title ["\u00a7a平局"]
title @a[tag=blaze.player] subtitle ["\u00a7e没有人获得胜利"]

execute as @a[tag=blaze.player,tag=play.total] run function minecraft:small_games/total/win_score {score:2}

function minecraft:blaze/over/all
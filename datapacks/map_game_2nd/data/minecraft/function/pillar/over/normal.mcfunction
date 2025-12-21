title @a[team=pillar] title ["\u00a7c游戏结束"]
title @a[team=pillar] subtitle ["\u00a7f你不是获胜者"]
title @a[team=pillar,gamemode=survival] title ["\u00a76你赢了！"]
title @a[team=pillar,gamemode=survival] subtitle ["\u00a7e你赢得了这把游戏的胜利"]
execute as @a[team=pillar,gamemode=survival,limit=1] run tellraw @a[team=pillar] [{selector:"@s"},"\u00a7a 赢得了这场比赛！"]

execute as @a[team=pillar,gamemode=survival] run function minecraft:small_games/total/win_score {score:3}
function minecraft:pillar/over/all

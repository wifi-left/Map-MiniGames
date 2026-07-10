title @a[team=pillar] title ["\u00a76平局"]
title @a[team=pillar] subtitle ["\u00a7f你并未赢得或输掉这场比赛"]
execute as @a[team=pillar,gamemode=survival] run function minecraft:small_games/total/win_score {score:3}
function minecraft:pillar/over/all
tellraw @a[tag=blaze.player] ["\n\u00a7e 本局结束。\n \u00a76获胜队伍：\u00a79[队伍A]\n"]
title @a[tag=blaze.player] title ["\u00a7e本局结束"]
title @a[team=blaze.team.a] title ["\u00a76本局你们赢了"]
execute if score blaze.police.state board matches 2 run title @a[tag=blaze.player] subtitle ["\u00a79[队伍A] \u00a7a获得剩余时间分"]
execute unless score blaze.police.state board matches 2 run title @a[tag=blaze.player] subtitle ["\u00a79[队伍A] \u00a7a成功守护据点！"]

execute if score blaze.time board matches 1.. if score blaze.police.state board matches 2 run scoreboard players operation blaze.score.a board += blaze.time board
function minecraft:blaze/during/check_or_next
tellraw @a[tag=blaze.player] ["\n\u00a7e 本局结束。\n \u00a76获胜队伍：\u00a7c[队伍B]\n"]
title @a[tag=blaze.player] title ["\u00a7e本局结束"]
title @a[team=blaze.team.b] title ["\u00a76本局你们赢了"]
execute if score blaze.police.state board matches 1 run title @a[tag=blaze.player] subtitle ["\u00a7c[队伍B] \u00a7a获得剩余时间分"]
execute unless score blaze.police.state board matches 1 run title @a[tag=blaze.player] subtitle ["\u00a7c[队伍B] \u00a7a成功守护据点！"]

execute if score blaze.time board matches 1.. if score blaze.police.state board matches 1 if score blaze.time board matches 1.. run scoreboard players operation blaze.score.b board += blaze.time board

function minecraft:blaze/during/check_or_next

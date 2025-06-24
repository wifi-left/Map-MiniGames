tellraw @a[team=stronghold] [{"selector":"@s"},"\u00a7a 已经完成了本层探索。"]
gamemode spectator @s
title @s title ["\u00a7a已完成探索"]
title @s subtitle ["请等待其他玩家完成探索..."]
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
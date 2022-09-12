team join job_pvp @s
tellraw @a [{"selector":"@s"},"\u00a77 已加入 \u00a7a职业战争\u00a77!"]
tp @s -62 30 176 0 0
clear @s
effect clear @s
title @s title ["\u00a7a职业战争"]
title @s subtitle ["\u00a7r欢迎光临 ~"]
playsound entity.player.levelup player @s -62 30 176 1 1 1
team join wait.jobpvp @s
xp set @s 0 levels
xp set @s 0 points
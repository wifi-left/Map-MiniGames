tellraw @s ["\n\u00a7c很抱歉，此游戏还在策划中...\n"]
title @s title ["\u00a7b\u00a7l狼人杀"]
title @s subtitle ["\u00a77Who Killed me?"]
tp @s -56 30 -351 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1

team join wait.wolfpeople
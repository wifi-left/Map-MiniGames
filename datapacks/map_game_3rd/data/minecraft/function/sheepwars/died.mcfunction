gamemode spectator @s
tellraw @s ["\u00a7c你死了。"]
tellraw @a[team=play.sheepwars.a] [{selector:"@s"},"\u00a7c死了。"]
tellraw @a[team=play.sheepwars.b] [{selector:"@s"},"\u00a7c死了。"]
tellraw @a[team=wait.sheepwars] [{selector:"@s"},"\u00a7c死了。"]
title @s title ["\u00a7c你死了"]
title @s subtitle ["\u00a7e你被淘汰了"]
execute in airworld run tp @s 371 -33 861 0 90

tellraw @a[team=t_says] [{"selector":"@s"},"§a 已完成！"]
tag @s add t_says.finished
function t_says/player_gain_coin {count:1,reason:"完成要求"}
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
title @s title ["\u00a7a你成功了"]
title @s subtitle ["你完成了要求"]
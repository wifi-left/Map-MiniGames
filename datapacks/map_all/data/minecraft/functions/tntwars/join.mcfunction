tellraw @s ["\n \u00a7e※ \u00a7c「TNT Wars」\n\n\u00a7e    \u00a76游戏规则\n\n\u00a7b    游戏开始后，玩家将被分为两组。\n\u00a7b    一定的时间后会生成物资（TNT投掷蛋）\n\u00a7b    使用此道具向对方投掷TNT，将对方\u00a7l扔下虚空\u00a7b！\n"]
title @s title ["\u00a7c\u00a7lTNT Wars"]
title @s subtitle ["\u00a7fBoom Boom Boom!"]
tp @s 502 20 240 0 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1

team join wait.tntwars

tag @s remove tntwars.a
tag @s remove tntwars.b
gamemode adventure @s
clear @s
xp set @s 0 levels
xp set @s 0 points
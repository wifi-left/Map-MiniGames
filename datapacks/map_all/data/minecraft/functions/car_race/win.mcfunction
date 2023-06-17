tellraw @a[team=car.play] [{"selector":"@s"},"\u00a7a赢得了比赛！"]
tellraw @a[team=car.wait] [{"selector":"@s"},"\u00a7a赢得了比赛！"]
title @s title ["\u00a76You won!"]
title @s subtitle ["\u00a7a你完成了 3 圈！"]
gamemode spectator @s
kill @e[tag=GCAR,tag=ridden,distance=0..1,sort=nearest,limit=1]
tag @s add car.win
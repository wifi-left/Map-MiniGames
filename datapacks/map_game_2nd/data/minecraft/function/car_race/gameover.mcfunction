##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a [{"text":"Car Race","color":"#009966","bold":true},"§a 游戏结束！"]
scoreboard players set car.state state 4
kill @e[tag=GCAR]
kill @e[type=item,nbt={Item:{id:"minecraft:saddle"}}]
tellraw @a[team=car.play] ["§a胜利者：",{"selector":"@a[gamemode=spectator,tag=car.win]"}]
tellraw @a[team=car.wait] ["§a胜利者：",{"selector":"@a[gamemode=spectator,tag=car.win]"}]
title @a[team=car.play] title ["\u00a7c\u00a7lGAME OVER"]
title @a[team=car.wait] subtitle ["\u00a7c5\u00a7e秒后返回等待大厅"]
gamemode spectator @a[team=car.play]

schedule function car_race/tp 5s


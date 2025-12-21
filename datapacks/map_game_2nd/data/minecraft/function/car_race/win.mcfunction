##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute on vehicle run kill @s[tag=GCAR]
tellraw @a[team=car.play] [{"selector":"@s"},"§a赢得了比赛！"]
tellraw @a[team=car.wait] [{"selector":"@s"},"§a赢得了比赛！"]
title @s title ["\u00a76你赢了！"]
title @s subtitle ["\u00a7a你完成了 3 圈！"]
gamemode spectator @s
tag @s add car.win

scoreboard players set sw.people tick 0
execute as @a[team=car.play,gamemode=spectator] at @s run scoreboard players add sw.people tick 1

execute if score sw.people tick matches 0 run execute as @s run function minecraft:small_games/total/win_score {score:3}
execute if score sw.people tick matches 1..2 run execute as @s run function minecraft:small_games/total/win_score {score:2}
execute if score sw.people tick matches 3..4 run execute as @s run function minecraft:small_games/total/win_score {score:1}
execute if score sw.people tick matches 5.. run function minecraft:car_race/gameover

title @a[team=disaster.snow] title "\u00a7f\u00a7l灾难 · 雪灾"
title @a[team=disaster.snow] subtitle "\u00a7a游戏即将开始！请注意天降掉落物！"

tellraw @s ["\n \u00a7f灾难 · 雪灾\u00a76：活下去！温馨提示：初始时有 3 层雪块。\n"]

execute in airworld run tp @a[gamemode=spectator,team=disaster.snow] 221 -5 20 0 90
gamemode spectator @a[gamemode=spectator,team=disaster.snow]

execute in airworld run tp @a[gamemode=adventure,team=disaster.snow] 221 -34 20
execute as @a[gamemode=adventure,team=disaster.snow] run function player:full_health
execute as @a[gamemode=adventure,team=disaster.snow] run spreadplayers 221 20 0 10 under -3 false @s

scoreboard players set disaster.snow.state state 2
scoreboard players set disaster.snow.time board 6
## 速度
scoreboard players set disaster.snow.speed board 1
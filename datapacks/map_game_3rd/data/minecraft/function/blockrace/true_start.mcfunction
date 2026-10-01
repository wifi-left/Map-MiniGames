gamemode survival @a[gamemode=adventure,team=blockrace]
title @a[gamemode=survival,team=blockrace] title "\u00a7a游戏开始"
title @a[gamemode=survival,team=blockrace] subtitle "向着终点前进吧！"
xp set @a[gamemode=survival,team=blockrace] 0 points
xp set @a[gamemode=survival,team=blockrace] 1000 levels

recipe give @a[gamemode=survival,team=blockrace] *
execute as @a[gamemode=survival,team=blockrace] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
scoreboard players set blockrace.state state 3
fill 145 -32 201 142 -35 205 air replace glass
# 15 min... 大游戏？
scoreboard players set blockrace.time board 600
# team modify blockrace friendlyFire true
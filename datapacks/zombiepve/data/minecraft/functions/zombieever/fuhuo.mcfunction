##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a7a你复活了。"]
execute if score zombie.round board matches ..13 run tp @s 630 10 -78 90 0
execute if score zombie.round board matches 14 run tp @s 682 15 -19 90 0
execute if score zombie.round board matches 15..17 run tp @s 630 10 -78 90 0
execute if score zombie.round board matches 18..24 run tp @s 558 -12 -136 0 0
execute if score zombie.round board matches 25 run tp @s 519 -42 -116 -90 0
execute if score zombie.round board matches 26..27 run tp @s 499 -43 -98 -90 0
# execute if score zombie.round board matches 27 run
execute if score zombie.round board matches 28.. run tp @s 630 10 -78 90 0
gamemode adventure @s
xp set @s 0 levels
xp set @s 0 points

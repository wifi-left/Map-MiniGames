##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.snow,gamemode=adventure] ["§c死亡决赛开始!\n§c边缘开始缩圈！"]
# fill -18 24 -78 -26 24 -70 snow_block
# execute as @a[team=play.snow,gamemode=adventure] at @s run spreadplayers -22 -74 0 3 under 27 false @s
# schedule function minecraft:snow/final 80s
schedule function minecraft:snow/smaller/remove1 5s


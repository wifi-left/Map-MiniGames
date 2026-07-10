##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[tag=wolf.tip] ["§6-------------------------\n§b§l ※ §a§l职业详情："]
execute as @a[tag=wolf.tip] at @s run function minecraft:twolf/over/show_jobs_per
tellraw @a[tag=wolf.tip] ["§6-------------------------"]


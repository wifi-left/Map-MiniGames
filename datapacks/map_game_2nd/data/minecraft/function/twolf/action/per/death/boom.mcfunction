##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add wolf.sell
execute as @a[tag=wolf.tip,team=wolfpeople,gamemode=adventure] at @s run function minecraft:twolf/action/per/death/boom/whochooseme
tag @s remove wolf.sell
tellraw @a[tag=wolf.tip] ["§c炸弹人 ",{"selector":"@s"},"§c 爆炸了。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a7c炸弹人 ",{"selector":"@s"},"\u00a7c 爆炸了。"]

execute as @a[tag=wolf.boomed] run function twolf/action/per/death/boom/died
tag @a remove wolf.boomed


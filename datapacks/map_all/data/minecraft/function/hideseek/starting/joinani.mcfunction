##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join hide.play.ani
clear @s
# give @s 
# item replace entity @s inventory.26 with arrow
# give @s 
scoreboard players set @s LRS_START_DJS 1
# execute as @s run spreadplayers 468.0 -364.0 0 40 under 5 false @s
execute if score hideseek.settings.map board matches 1 run spreadplayers 468.0 -364.0 0 40 under 5 false @s
execute if score hideseek.settings.map board matches 2 run tp @s 528 -5 -566 0 0

function hideseek/defaultanimal

tellraw @s ["\n§b   你的身份是：躲藏者。\n§6温馨提示：§b潜行时可以让方块对其。"]


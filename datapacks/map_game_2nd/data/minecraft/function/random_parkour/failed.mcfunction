tellraw @s ["\u00a7c你掉下去了。"]
execute in parkourworld run tp @s 11 -61 229 -90 0
execute at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
clear @s
##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @a ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 \u00a7aParkour \u00a77!"]
tellraw @s ["\n\u00a7b    欢迎来到关卡跑酷！\n\u00a7a    您可以随时输入\u00a7d/trigger hub set 1\u00a7a返回大厅（出生点）！\n\u00a7a    在地图中，\u00a7f",{"translate":"block.minecraft.heavy_weighted_pressure_plate","color":"white"},"\u00a7a代表\u00a7e记录点\u00a7a，您可以随时返回记录点！\n\u00a77    ",{"translate":"block.minecraft.polished_blackstone_pressure_plate","color":"aqua"},"\u00a7a代表终点。\n"]
# team join lobby,tag=parkouring
scoreboard players reset @s parkour.tick
scoreboard players reset @s parkour

team join parkour @s
function lpark/resettime

tag @s remove parkouring
playsound ui.button.click player @s ~ ~ ~
effect clear @s jump_boost
effect clear @s speed
tag @s remove mazing

execute in minecraft:parkourworld run tp @s 8 4 8 0 0
execute in minecraft:parkourworld at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1

execute in minecraft:parkourworld at @s run function lpark/plset


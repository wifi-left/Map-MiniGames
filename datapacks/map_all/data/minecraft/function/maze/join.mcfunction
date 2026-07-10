##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @a ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 \u00a7aParkour \u00a77!"]
tellraw @s ["\n§b    欢迎来到迷宫！\n§a    您可以随时输入§d/trigger hub set 1§a返回大厅（出生点）！\n§a    在地图中，§f",{"translate":"block.minecraft.warped_pressure_plate","color":"white"},"§a代表§e起点§a，您可以随时返回记录点！\n§7    ",{"translate":"block.minecraft.crimson_pressure_plate","color":"aqua"},"代表终点。\n"]
# team join lobby,tag=mazing
scoreboard players reset @s parkour.tick
scoreboard players reset @s parkour

function maze/plset
function maze/resettime

tag @s remove parkouring
tag @s add mazing
playsound ui.button.click player @s ~ ~ ~
effect clear @s jump_boost
effect clear @s speed


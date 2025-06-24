##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

playsound ui.button.click player @s ~ ~ ~
scoreboard players remove hide2.timeperplayer board 10
execute if score hide2.timeperplayer board matches ..-1 run tellraw @s ["§c时间过短。"]
execute if score hide2.timeperplayer board matches ..-1 run scoreboard players set hide2.timeperplayer board 0
function minecraft:hide2/settings/showtime

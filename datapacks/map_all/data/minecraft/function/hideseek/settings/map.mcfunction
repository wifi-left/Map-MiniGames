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
scoreboard players add hideseek.settings.map state 1
execute if score hideseek.settings.map state matches 4.. run scoreboard players set hideseek.settings.map state 0

execute if score hideseek.settings.map state matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value [{text:"[随机地图]",color:"light_purple",bold:true}]
execute if score hideseek.settings.map state matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value [{text:"庄园之歌",color:"green",bold:true}]
execute if score hideseek.settings.map state matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value [{text:"天空之城",color:"aqua",bold:true}]
execute if score hideseek.settings.map state matches 3 run data modify block ~ ~ ~ front_text.messages[1] set value [{text:"洞窟之家",color:"yellow",bold:true}]
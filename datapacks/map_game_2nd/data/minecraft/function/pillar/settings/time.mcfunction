playsound ui.button.click player @s ~ ~ ~ 1 1 1
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add pillar.time state 1
execute if score pillar.time state matches 15.. run scoreboard players set pillar.time state 0

execute if score pillar.time state matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 自动 ]",color:white}
execute if score pillar.time state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 1min ]",color:green}
execute if score pillar.time state matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 2min ]",color:green}
execute if score pillar.time state matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 3min ]",color:aqua}
execute if score pillar.time state matches 4 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 4min ]",color:aqua}
execute if score pillar.time state matches 5 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 5min ]",color:light_purple}
execute if score pillar.time state matches 6 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 6min ]",color:light_purple}
execute if score pillar.time state matches 7 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 7min ]",color:light_purple}
execute if score pillar.time state matches 8 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 8min ]",color:light_purple}
execute if score pillar.time state matches 9 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 9min ]",color:light_purple}
execute if score pillar.time state matches 10 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 10min ]",color:light_purple}
execute if score pillar.time state matches 11 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 15min ]",color:light_purple}
execute if score pillar.time state matches 12 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 20min ]",color:light_purple}
execute if score pillar.time state matches 13 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 25min ]",color:light_purple}
execute if score pillar.time state matches 14 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 30min ]",color:light_purple}
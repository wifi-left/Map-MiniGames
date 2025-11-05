playsound ui.button.click player @s ~ ~ ~ 1 1 1
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add blaze.time state 1
execute if score blaze.time state matches 61.. run scoreboard players set blaze.time state 1

execute if score blaze.time state matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 5min ]",color:green}
execute if score blaze.time state matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 10min ]",color:green}
execute if score blaze.time state matches 3 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 15min ]",color:aqua}
execute if score blaze.time state matches 4 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 20min ]",color:aqua}
execute if score blaze.time state matches 5 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 25min ]",color:light_purple}
execute if score blaze.time state matches 6 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 30min ]",color:light_purple}
execute if score blaze.time state matches 7 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 45min ]",color:red}
execute if score blaze.time state matches 8 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 60min ]",color:dark_red}
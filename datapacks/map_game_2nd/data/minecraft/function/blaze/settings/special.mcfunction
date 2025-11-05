playsound ui.button.click player @s ~ ~ ~ 1 1 1
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add blaze.special state 1
execute if score blaze.special state matches 2.. run scoreboard players set blaze.special state 1

execute if score blaze.special state matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 禁用 ]",color:gray}
execute if score blaze.special state matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 魔法 ]",color:light_purple}
# execute if score blaze.special state matches 3 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[ 枪械 ]",color:"#65cbed"}
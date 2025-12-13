playsound ui.button.click player @s ~ ~ ~ 1 1 1
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add pillar.floor state 1
execute if score pillar.floor state matches 14.. run scoreboard players set pillar.floor state 0

execute if score pillar.floor state matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 随机 ]",color:white}
execute if score pillar.floor state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 无 ]",color:red}
execute if score pillar.floor state matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 雪块 ]",color:green}
execute if score pillar.floor state matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 主世界 ]",color:green}
execute if score pillar.floor state matches 4 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 地狱 ]",color:green}
execute if score pillar.floor state matches 5 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 砂岩 ]",color:green}
execute if score pillar.floor state matches 6 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 粘液块 ]",color:aqua}
execute if score pillar.floor state matches 7 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 水 ]",color:aqua}
execute if score pillar.floor state matches 8 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 岩浆 ]",color:aqua}
execute if score pillar.floor state matches 9 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 细雪 ]",color:light_purple}
execute if score pillar.floor state matches 10 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 玻璃 ]",color:light_purple}
execute if score pillar.floor state matches 11 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 玻璃板 ]",color:light_purple}
execute if score pillar.floor state matches 12 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 铁栅栏 ]",color:light_purple}
execute if score pillar.floor state matches 13 run data modify block ~ ~ ~ front_text.messages[2] set value {text:"[ 锁链 ]",color:light_purple}
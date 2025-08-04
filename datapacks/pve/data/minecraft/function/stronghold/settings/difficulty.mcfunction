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

scoreboard players add stronghold.difficulty state 1
execute if score stronghold.difficulty state matches 6.. run scoreboard players set stronghold.difficulty state 0
# snow.mode bo1ard
# execute if score stronghold.difficulty state matches -1 run data modify block ~ ~ ~ front_text.messages[1] set value {"text":"> 随机选择 <","color":"gold"}
execute if score stronghold.difficulty state matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value [{"text":"自动选择","color":"light_purple",bold:true}]
execute if score stronghold.difficulty state matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value [{"text":"根据人数自动选择难度","color":"white",bold:false}]

execute if score stronghold.difficulty state matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value [{"text":"简单","color":"green",bold:true}]
execute if score stronghold.difficulty state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value [{"text":"适合1~2人游戏","color":"white",bold:false}]

execute if score stronghold.difficulty state matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value [{"text":"普通","color":"aqua",bold:true}]
execute if score stronghold.difficulty state matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value [{"text":"适合2~4人游戏","color":"white",bold:false}]

execute if score stronghold.difficulty state matches 3 run data modify block ~ ~ ~ front_text.messages[1] set value [{"text":"困难","color":"yellow",bold:true}]
execute if score stronghold.difficulty state matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value [{"text":"适合5~8人游戏","color":"white",bold:false}]

execute if score stronghold.difficulty state matches 4 run data modify block ~ ~ ~ front_text.messages[1] set value [{"text":"逆天","color":"red",bold:true}]
execute if score stronghold.difficulty state matches 4 run data modify block ~ ~ ~ front_text.messages[2] set value [{"text":"适合9~12人游戏","color":"white",bold:false}]

execute if score stronghold.difficulty state matches 5 run data modify block ~ ~ ~ front_text.messages[1] set value [{"text":"变态","color":"dark_red",bold:true}]
execute if score stronghold.difficulty state matches 5 run data modify block ~ ~ ~ front_text.messages[2] set value [{"text":"适合9~12人游戏","color":"white",bold:false}]


playsound ui.button.click player @s ~ ~ ~ 1 1 1


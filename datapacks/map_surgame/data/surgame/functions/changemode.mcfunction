##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s

## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以设定游戏选项。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add sur.zommode state 1
execute if score sur.zommode state matches 2.. run scoreboard players set sur.zommode state 0
execute if score sur.zommode state matches 1 run data modify block -43 182 -116 front_text.messages[1] set value '"\\u00a7c[感染模式]"'
execute if score sur.zommode state matches 0 run data modify block -43 182 -116 front_text.messages[1] set value '"\\u00a7a[竞赛模式]"'

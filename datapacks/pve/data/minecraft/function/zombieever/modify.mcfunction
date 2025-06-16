##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s

## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

execute unless score zombie.state state matches 1.. run scoreboard players add zombie.map board 1
execute if score zombie.state state matches 1.. run tellraw @s ["§c游戏已经开始，当前无法修改。"]
execute if score zombie.map board matches 5.. run scoreboard players set zombie.map board 1
execute if score zombie.map board matches 2.. run scoreboard players set zombie.map board 1
execute if score zombie.map board matches ..1 run data modify block 347 76 22 front_text.messages[1] set value "\u00a7a[神的召唤]"
execute if score zombie.map board matches 2 run data modify block 347 76 22 front_text.messages[1] set value "\u00a7e[小岛奇遇]"



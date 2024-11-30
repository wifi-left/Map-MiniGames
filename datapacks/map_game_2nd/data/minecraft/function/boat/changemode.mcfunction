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

execute unless score boat.state state matches 1.. run scoreboard players add boat.type board 1
execute if score boat.state state matches 1.. run tellraw @s ["\u00a7c游戏已经开始，当前无法修改。"]
# execute if score boat.type board matches 5.. run scoreboard players set boat.type board 1
# execute if score boat.type board matches 4.. run scoreboard players set boat.type board 1
execute if score boat.type board matches 6.. run scoreboard players set boat.type board 1
# execute if score boat.type board matches ..1 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a7b[冰船]"'
execute if score boat.type board matches ..1 run scoreboard players set boat.type board 2

# execute if score chest.type board matches 2 run data merge block 347 91 22 {Textx2:'"\\u00a7b\\u00a7l[逃离神庙]"'}
execute if score boat.type board matches 3 run scoreboard players set boat.type board 4
execute if score boat.type board matches 2 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a7c[猪🐖]"'
execute if score boat.type board matches 4 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a77[铁人三项]"'
execute if score boat.type board matches 5 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a7e[赛马]"'


# execute if score chest.type board matches 4 run data merge block 347 91 22 {Textx2:'"\\u00a7d\\u00a7l[五子棋]"'}

##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以设定游戏选项。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add jump lobby.effect 0
execute if score jump lobby.effect matches -10..0 run function lobby/jump_one
execute if score jump lobby.effect matches 1..1 run function lobby/jump_two
execute if score jump lobby.effect matches 2..2 run function lobby/jump_off
scoreboard players add jump lobby.effect 1
execute if score jump lobby.effect matches 3.. run scoreboard players set jump lobby.effect 0


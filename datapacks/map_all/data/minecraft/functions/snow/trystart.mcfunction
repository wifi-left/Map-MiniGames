##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set wait.snow.player tick 0
playsound ui.button.click player @s
execute as @a[team=wait.snow,gamemode=adventure] run scoreboard players add wait.snow.player tick 1

execute if score snow.state state matches 1.. run function minecraft:snow/spec

## 检测是否禁止启动
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以开始。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0

execute unless score snow.state state matches 1.. if score wait.snow.player tick matches ..1 run function minecraft:snow/notenough
execute unless score snow.state state matches 1.. if score wait.snow.player tick matches 2.. run function minecraft:snow/start

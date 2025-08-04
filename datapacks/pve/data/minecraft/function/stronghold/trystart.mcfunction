##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set wait.snow.player tick 0
execute as @a[team=stronghold,gamemode=adventure] run scoreboard players add wait.snow.player tick 1
playsound ui.button.click player @s

execute if score stronghold.state state matches 1.. run function minecraft:stronghold/spec

## 检测是否禁止启动
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["§c游戏仅管理员可以开始。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0

execute unless score stronghold.state state matches 1.. if score wait.snow.player tick matches ..0 run tellraw @s ["§c对不起，当前玩家数小于1 ！"]
execute unless score stronghold.state state matches 1.. if score wait.snow.player tick matches 1.. run function minecraft:stronghold/start


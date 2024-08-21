##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s ~ ~ ~ 1 1 1
# 重置人数统计
scoreboard players set wait.player tick 0
# 计算人数
execute as @a[team=deskgame,gamemode=adventure] run scoreboard players add wait.player tick 1
# 判断人数、游戏状态
execute if score desk.state state matches 1.. run function minecraft:desk/spec

## 检测是否禁止启动
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以开始。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0


execute if score desk.type board matches 2 run advancement grant @s only minecraft:games/imcompleted_game
execute if score desk.type board matches 2 run tellraw @s ["\u00a7c新游戏鸽了，等更新吧..."]
execute if score desk.type board matches 2 run return 0

execute unless score desk.state state matches 1.. if score wait.player tick matches ..1 run tellraw @s ["\u00a7c人数不够！请等待至少2人！"]
execute unless score desk.state state matches 1.. if score wait.player tick matches ..1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score desk.state state matches 1.. if score wait.player tick matches 2.. run function minecraft:desk/start

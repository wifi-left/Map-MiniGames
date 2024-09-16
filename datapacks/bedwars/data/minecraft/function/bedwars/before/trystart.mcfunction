##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score bw.state state matches ..-1 run tellraw @s ["\u00a7c游戏正在准备，请稍等游戏开始！"]

## 检测是否禁止启动
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以开始。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0

scoreboard players set wait.bw.player tick 0
execute as @a[team=bw.wait,gamemode=adventure] run scoreboard players add wait.bw.player tick 1
execute unless score bw.state state matches ..-1 unless score bw.state state matches 1.. if score wait.bw.player tick matches ..1 run title @a[team=bw.wait] subtitle ["\u00a7cWait for more players !"]
execute unless score bw.state state matches ..-1 unless score bw.state state matches 1.. if score wait.bw.player tick matches ..1 run title @a[team=bw.wait] title ["\u00a7fBedwars"]
execute unless score bw.state state matches ..-1 unless score bw.state state matches 1.. if score wait.bw.player tick matches 2.. run function minecraft:bedwars/before/start

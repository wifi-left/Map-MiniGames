##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 绕竖直轴扫 12 个方向：0°、30°…330°（不再重复采样 0°/360°）
scoreboard players add @s cmdtnt.x 1
scoreboard players set @s cmdtnt.y 0
function cmdtnt:tnt/roundandshoot_y
execute at @s run tp @s ~ ~ ~ ~30 ~
execute if score @s cmdtnt.x matches ..11 run function cmdtnt:tnt/roundandshoot_x

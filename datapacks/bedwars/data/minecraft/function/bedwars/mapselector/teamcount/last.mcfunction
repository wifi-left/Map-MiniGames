##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 队伍数量：上一项（告示牌点击入口）
# 只有「四队 / 两队」两项，所以 last 和 next 效果一样：切到另一个值
# 牌子坐标写在 message/showmode.mcfunction 里（-305 75 210）
playsound ui.button.click player @s ~ ~ ~ 1 1 1

## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

# 当前是两队就切四队，否则（四队 / 没设过 / 0）切两队
scoreboard players set tmp.teamcount board 2
execute if score bw.teamcount state matches 2 run scoreboard players set tmp.teamcount board 4
scoreboard players operation bw.teamcount state = tmp.teamcount board

function minecraft:bedwars/message/showmode

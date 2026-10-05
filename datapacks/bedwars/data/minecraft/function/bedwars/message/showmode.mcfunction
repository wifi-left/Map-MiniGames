##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 大厅设置牌：模式牌显示「规则」，队伍数量牌显示「两队 / 四队」
# 两块牌都只写第 3 行（front_text.messages[2]）——换牌子位置时只改下面这两个坐标
#   模式牌： -305 76 210     （点击 -> function minecraft:bedwars/mapselector/mode/nextmode / lastmode）
#   队伍牌： -305 75 210     （点击 -> function minecraft:bedwars/mapselector/teamcount/next / last）

# 模式（bw.mode state 0..7）
execute if score bw.mode state matches 0 run data modify block -305 76 210 front_text.messages[2] set value "\u00a7d普通"
execute if score bw.mode state matches 1 run data modify block -305 76 210 front_text.messages[2] set value "\u00a7c无床"
execute if score bw.mode state matches 2 run data modify block -305 76 210 front_text.messages[2] set value "\u00a7e全解锁"
execute if score bw.mode state matches 3 run data modify block -305 76 210 front_text.messages[2] set value "\u00a7d经验模式"
execute if score bw.mode state matches 4 run data modify block -305 76 210 front_text.messages[2] set value "\u00a76双倍资源"
execute if score bw.mode state matches 5 run data modify block -305 76 210 front_text.messages[2] set value "\u00a7a职业模式"
execute if score bw.mode state matches 6 run data modify block -305 76 210 front_text.messages[2] set value "\u00a74僵尸潮"
execute if score bw.mode state matches 7 run data modify block -305 76 210 front_text.messages[2] set value "\u00a75永久床"
# 保险：超出 0..7 的值一律回到普通
execute if score bw.mode state matches 8.. run scoreboard players set bw.mode state 0
execute if score bw.mode state matches ..-1 run scoreboard players set bw.mode state 0

# 队伍数量（bw.teamcount：2 = 两队，其它值 / 没设过 = 四队）
execute if score bw.teamcount state matches 2 run data modify block -305 75 210 front_text.messages[2] set value "\u00a7a两队"
execute unless score bw.teamcount state matches 2 run data modify block -305 75 210 front_text.messages[2] set value "\u00a7b四队"

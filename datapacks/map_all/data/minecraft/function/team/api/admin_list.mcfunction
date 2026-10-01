##
## 管理员 API：列出所有队伍并提供删除按钮
## 用法：/function minecraft:team/api/admin_list   （管理员菜单里的“队伍管理”就是调它）
##

playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1
tellraw @s ["\n§b ※ §6§l组队管理\n"]
execute unless score team.disabled board matches 1 run tellraw @s ["§7组队功能：§a已启用"]
execute if score team.disabled board matches 1 run tellraw @s ["§7组队功能：§c已被管理员禁用"]

scoreboard players set team.tid.found board 0
scoreboard players set team.tid.i board 1
scoreboard players operation team.tid.max board = team.count board
scoreboard players set tmp.team.adminmode board 0
data modify storage minecraft:team_tmp tidloop set value {tid:1}
function minecraft:team/lib/admin_tid with storage minecraft:team_tmp tidloop

execute if score team.tid.found board matches 0 run tellraw @s ["§7（当前没有任何队伍）"]
tellraw @s [{"text":"[删除全部队伍]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/dialog show @s minecraft:team/admin_disband_all"},"hover_event":{"action":"show_text","value":"确认后删除所有队伍，并作废待处理邀请"}}]
tellraw @s ["§7点击上方某一行的 §c[删除] §7即可删掉那一支队伍（成员会被移出，离线成员同样生效）。\n"]

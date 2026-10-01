##
## 管理员：启用组队功能（/trigger team 等）
##

function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["§a地图已启用组队功能！\n§7玩家可以用 §6/trigger team §7组队；多人游戏恢复“仅队长可进入、队长自动拉人”的规则。"]
scoreboard players set team.disabled board 0

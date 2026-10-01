##
## 管理员：禁用组队功能
##

function minecraft:admin/main
playsound minecraft:block.anvil.land player @s ~ ~ ~ 1 1 0
tellraw @a ["§c地图已禁用组队功能！\n§7玩家无法再使用 §6/trigger team§7；已有队伍会保留（可在“队伍管理”里删除），多人游戏也不再限制“仅队长可进入”。"]
scoreboard players set team.disabled board 1

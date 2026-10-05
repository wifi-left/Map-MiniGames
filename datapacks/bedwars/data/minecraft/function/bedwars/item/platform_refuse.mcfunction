# 救援平台：放不下 —— 退回道具（是地图空间问题，不是玩家操作失误）
function minecraft:bedwars/item/give_platform
tellraw @s ["§c这里放不下救援平台（太靠近地图边界，或脚下是实心）§7 - §f已退回道具"]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1

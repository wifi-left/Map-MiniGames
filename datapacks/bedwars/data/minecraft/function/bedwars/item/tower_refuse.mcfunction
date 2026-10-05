# 速建防御塔：太靠近地图边界 —— 退回生物蛋并取消（是地图空间问题，不是玩家操作失误）
execute if entity @p[distance=..8] run tellraw @p[distance=..8] ["§c这里太靠近地图边界，无法建造防御塔 §7- §f已退回道具"]
execute if entity @p[distance=..8] run playsound minecraft:entity.villager.no player @p[distance=..8] ~ ~ ~ 1 1
execute as @p[distance=..8] run function minecraft:bedwars/item/give_tower
kill @s

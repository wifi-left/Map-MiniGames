# 玩家把「职业选择」道具丢了出来：把掉落物收掉、原样还给他（等于「不准丢弃」）
# 用 minecraft.dropped:minecraft.paper 统计找到「是谁丢的」；回城卷轴/无敌卷轴也是 paper，
# 所以只有当附近确实有职业道具的掉落物时才回补，丢别的纸制品不受影响
execute unless entity @s[tag=bw.player] run return 0
scoreboard players reset @s bw.class.drop
scoreboard players reset @s bw.class.tmp
execute store success score @s bw.class.tmp run kill @e[type=item,distance=..4,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{bw_class_pick:true}}}}]
execute if score @s bw.class.tmp matches 1 run function minecraft:bedwars/item/give_class_pick
execute if score @s bw.class.tmp matches 1 run tellraw @s ["§7「职业选择」道具不能丢弃。"]
scoreboard players reset @s bw.class.tmp

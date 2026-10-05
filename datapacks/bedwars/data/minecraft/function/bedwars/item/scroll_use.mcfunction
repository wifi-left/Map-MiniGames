# 回城卷轴：开始 3 秒咏唱（consumable 触发时物品已经被消耗掉了）
advancement revoke @s only minecraft:bedwars/return_scroll
execute unless entity @s[tag=bw.player] run return 0
execute if entity @s[gamemode=spectator] run return 0
# 记录起点：Pos×100 后向下取整（wiki 已确认 scale 参数是向下取整，负数坐标也正确）
execute store result score @s bw.scroll.x run data get entity @s Pos[0] 100
execute store result score @s bw.scroll.y run data get entity @s Pos[1] 100
execute store result score @s bw.scroll.z run data get entity @s Pos[2] 100
scoreboard players set @s bw.scroll.t 60
tag @s add bw.scrolling
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
tellraw @s ["§b开始咏唱回城卷轴 §7- §f3 秒内请勿移动或受到伤害"]

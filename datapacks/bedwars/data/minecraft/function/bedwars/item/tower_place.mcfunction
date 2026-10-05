# 速建防御塔：生物蛋落地后的标记（执行者 = 标记）
# 还没定朝向 = 生物蛋使用统计没触发 → 走兜底（会打印一条明显的调试提示）
execute if entity @s[tag=bw.tower.noface] at @s run function minecraft:bedwars/item/tower_place_fallback

# 边界校验（占地 5×5、高 7 层，再各留 2 格余量，含 y 轴）
# 游戏区域 y 下限是 -60，塔基最低到 -60；塔顶最高到 y=66，因为 y≥67 每秒会被清空
execute store result score @s bw.tmp.x run data get entity @s Pos[0] 100
execute store result score @s bw.tmp.y run data get entity @s Pos[1] 100
execute store result score @s bw.tmp.z run data get entity @s Pos[2] 100
scoreboard players set @s bw.tmp.ok 0
execute if score @s bw.tmp.x matches -38800..-22000 if score @s bw.tmp.y matches -6000..6000 if score @s bw.tmp.z matches 12500..29500 run scoreboard players set @s bw.tmp.ok 1
execute if score @s bw.tmp.ok matches 0 at @s run function minecraft:bedwars/item/tower_refuse
execute if score @s bw.tmp.ok matches 1 run function minecraft:bedwars/item/tower_begin

# 踩到记录点中心的那个金块：结构照抄大厅跑酷 parkourrace/setpoint
# 记录点数据复用大厅跑酷的 park.x / park.y / park.z（holder = 玩家，存玩家自己的坐标）
scoreboard players set random_parkour.cp.tmp board 0
execute store result score random_parkour.cp.tmp.x board run data get entity @s Pos[0]
execute store result score random_parkour.cp.tmp.y board run data get entity @s Pos[1]
execute store result score random_parkour.cp.tmp.z board run data get entity @s Pos[2]
execute if score @s park.x = random_parkour.cp.tmp.x board if score @s park.y = random_parkour.cp.tmp.y board if score @s park.z = random_parkour.cp.tmp.z board run scoreboard players set random_parkour.cp.tmp board 1

# 与已记录的记录点重合：不重复提醒（避免刷屏）
execute if score random_parkour.cp.tmp board matches 1 run title @s actionbar ["§c[记录点] 你已经在这个记录点了"]
execute if score random_parkour.cp.tmp board matches 0 run function minecraft:random_parkour/checkpoint/plset

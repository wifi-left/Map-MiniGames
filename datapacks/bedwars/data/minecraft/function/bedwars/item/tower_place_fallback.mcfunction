# 兜底：生物蛋使用统计没触发时，用最近玩家的朝向/队伍（正常路径不会走到这里）
# ↓↓↓ 这两行提示是刻意做成「和正常路径不一样」的，确认统计正常后可以直接删掉
execute if entity @p[distance=..8] run tellraw @p[distance=..8] ["§8[§e起床调试§8] §7防御塔朝向走了§e兜底检测§7（生物蛋使用统计没有触发）。正常路径不会出现这条提示"]
execute if entity @p[distance=..8] run playsound minecraft:block.note_block.bass player @p[distance=..8] ~ ~ ~ 1 0.6
# 诊断计数：/scoreboard players get bw.tower.fb board
scoreboard players add bw.tower.fb board 1

execute store result score @s bw.tmp.p run data get entity @p[distance=..8] Rotation[0] 100
execute if score @s bw.tmp.p matches -4500..4499 run tag @s add bw.tower.f0
execute if score @s bw.tmp.p matches 4500..13499 run tag @s add bw.tower.f1
execute if score @s bw.tmp.p matches 13500..18000 run tag @s add bw.tower.f2
execute if score @s bw.tmp.p matches -18000..-13500 run tag @s add bw.tower.f2
execute if score @s bw.tmp.p matches -13499..-4500 run tag @s add bw.tower.f3
execute if entity @p[distance=..8,team=bw.blue] run tag @s add bw.tower.cblue
execute if entity @p[distance=..8,team=bw.red] run tag @s add bw.tower.cred
execute if entity @p[distance=..8,team=bw.yellow] run tag @s add bw.tower.cyellow
execute if entity @p[distance=..8,team=bw.green] run tag @s add bw.tower.cgreen
tag @s remove bw.tower.noface

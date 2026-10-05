# 回城卷轴：咏唱计时 + 打断判定（每 tick，执行者 = 咏唱中的玩家）
# 必须排在 tick.mcfunction 里 hurt.1 被清零之前 —— hurt.1 就是「本 tick 受到的伤害」
scoreboard players remove @s bw.scroll.t 1

# 受到伤害 → 打断
execute if score @s hurt.1 matches 1.. run function minecraft:bedwars/item/scroll_break

# 位置移动 → 打断（容差 0.1 格；只看位移，转动视角不算）
execute store result score @s bw.tmp.p run data get entity @s Pos[0] 100
scoreboard players operation @s bw.tmp.p -= @s bw.scroll.x
execute if score @s bw.tmp.p matches ..-10 run function minecraft:bedwars/item/scroll_break
execute if score @s bw.tmp.p matches 10.. run function minecraft:bedwars/item/scroll_break

execute store result score @s bw.tmp.p run data get entity @s Pos[1] 100
scoreboard players operation @s bw.tmp.p -= @s bw.scroll.y
execute if score @s bw.tmp.p matches ..-10 run function minecraft:bedwars/item/scroll_break
execute if score @s bw.tmp.p matches 10.. run function minecraft:bedwars/item/scroll_break

execute store result score @s bw.tmp.p run data get entity @s Pos[2] 100
scoreboard players operation @s bw.tmp.p -= @s bw.scroll.z
execute if score @s bw.tmp.p matches ..-10 run function minecraft:bedwars/item/scroll_break
execute if score @s bw.tmp.p matches 10.. run function minecraft:bedwars/item/scroll_break

# 咏唱完成
execute if score @s bw.scroll.t matches ..0 run function minecraft:bedwars/item/scroll_go

# 进行中的提示（被打断后 tag 已经没了，所以不会覆盖「被打断」那条）
execute if entity @s[tag=bw.scrolling] run title @s actionbar ["§b正在咏唱回城卷轴… §7（请勿移动 / 受击）"]
execute if entity @s[tag=bw.scrolling] at @s run particle minecraft:end_rod ~ ~1 ~ 0.25 0.5 0.25 0 3 normal

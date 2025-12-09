
# 暂时禁用
# return 0

# 主干
execute if score desk.state state matches 1..99 unless entity @a[tag=merchant.alive] run return run function minecraft:merchant/over/all

# 重置人数统计
scoreboard players set desk.player tick 0
# 计算人数
execute as @a[tag=merchant.alive] run scoreboard players add desk.player tick 1
execute if score desk.state state matches 1..99 if score desk.player tick matches ..1 run function minecraft:merchant/over/one

execute if score desk.state state matches 1..5 as @a[tag=merchant.alive] if score @s merchant.coin >= merchant.target board run tag @s add merchant.win

execute if score desk.state state matches 1..5 as @a[tag=merchant.alive] if score @s merchant.coin matches ..-1 run function minecraft:merchant/player/action/out


execute if entity @a[tag=merchant.win] run function minecraft:merchant/over/score
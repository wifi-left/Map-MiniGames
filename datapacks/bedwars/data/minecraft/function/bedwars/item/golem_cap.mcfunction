# 铁傀儡守卫：每队上限 3 只（macro t = 队伍名的英文后缀）
# 超出时移除「年龄最大」的一只：年龄存在傀儡自己的 board 上（每秒 +1）
scoreboard players set bw.golem.cnt board 0
$execute as @e[tag=bw.golem,team=bw.$(t)] run scoreboard players add bw.golem.cnt board 1
execute if score bw.golem.cnt board matches 4.. run scoreboard players set bw.golem.max board -1
$execute if score bw.golem.cnt board matches 4.. as @e[tag=bw.golem,team=bw.$(t)] run scoreboard players operation bw.golem.max board > @s board
$execute if score bw.golem.cnt board matches 4.. as @e[tag=bw.golem,team=bw.$(t)] if score @s board = bw.golem.max board run kill @s

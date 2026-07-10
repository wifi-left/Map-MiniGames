tellraw @a[team=boom] ["§c时间超时。玩家本轮游戏结束！"]
scoreboard players set boom.time board -2
function minecraft:bomb/round/next_person
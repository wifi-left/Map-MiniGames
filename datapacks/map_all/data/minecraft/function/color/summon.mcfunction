##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set color.state state 2
scoreboard players set color.tick tick 6
tellraw @a[team=wait.color] ["§c颜色已经开始变化！"]
tellraw @a[team=play.color] ["§c颜色已经开始变化！"]
execute store result score color.rantype board run random value 1..17
# 轮数计数器：本回合是第几回合。难度阶段由它判定（>=12 允许同族换尺寸，>=24 允许形状变化）
scoreboard players add color.round tick 1
function minecraft:color/ran_fill/reroll


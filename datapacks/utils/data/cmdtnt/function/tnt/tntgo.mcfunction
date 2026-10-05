##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 射线步进：每 0.5 格扣 5 点强度，穿过可爆破方块按抗性额外衰减
scoreboard players remove @s cmdtnt.go 5
execute if block ~ ~ ~ #cmdtnt:tnt_9 run scoreboard players remove @s cmdtnt.go 30
execute if block ~ ~ ~ #cmdtnt:tnt_3 run scoreboard players remove @s cmdtnt.go 10
execute if block ~ ~ ~ #cmdtnt:tnt_0_8 run scoreboard players remove @s cmdtnt.go 3
# 羊毛 / 深色橡木木板 / 梯子 / 切制砂岩：两档威力都能破坏
execute align xyz if block ~ ~ ~ #cmdtnt:tnt_breakable_small run function cmdtnt:tnt/mark
# 末地石：只有大威力档（TNT 羊）才破坏
execute unless entity @s[tag=cmd.tnt.small] align xyz if block ~ ~ ~ #cmdtnt:tnt_9 run function cmdtnt:tnt/mark
# 销毁阶段只按位置看方块，不需要再区分档位（小威力档的标记不会落在末地石上）
execute as @s at @s run tp @s ^ ^ ^0.5
execute if score @s cmdtnt.go matches 1.. at @s run function cmdtnt:tnt/tntgo

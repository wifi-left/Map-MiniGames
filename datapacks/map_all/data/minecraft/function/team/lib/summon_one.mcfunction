##
## 召集单个队员回大厅（以被召集的队员为执行者）
## 宏：$(from) 队长名字
##
## 走的是 /trigger hub 的同一条路：把 hub 计分项置 1，
## 由 map_main 的 lobby/tick.mcfunction 负责切回 lobby 队、清理标签、传送并恢复冒险模式。
##

$tellraw @s ["\n§8========================================\n§e队长 §b$(from)§e 召集全队回大厅。\n§8========================================\n"]
execute at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
scoreboard players set @s hub 1
scoreboard players add tmp.team.sumn board 1

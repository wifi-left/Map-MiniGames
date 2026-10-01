##
## 击杀木乃伊（id 81）
## 判定本身由 t_says.kills（minecraft.custom:minecraft.mob_kills）负责，见 action/kill_mob——谁打死算谁的
## 这里只保证两件事：
##   1. 掉下平台的靶子直接清掉（不然会算进数量、导致补不出新的）
##   2. 场上靶子数量不少于"还没判定的玩家数"（每 tick 最多补一只）
##      这样"自己的靶子被别人打掉了"也不会把人卡死
##
execute as @e[tag=t_says.target] at @s unless block ~ ~-1 ~ terracotta run kill @s

scoreboard players set tmp.t_says.husk board 0
execute as @e[tag=t_says.target] run scoreboard players add tmp.t_says.husk board 1

scoreboard players set tmp.t_says.need board 0
execute as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] run scoreboard players add tmp.t_says.need board 1

execute if score tmp.t_says.husk board < tmp.t_says.need board as @r[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] run function minecraft:t_says/scene/special/spawn_husk

##
## 调试：按任务 id 强制加载某个任务，并走正常的"播报 → 判定"流程
## 用法：/function minecraft:t_says/debug/force_scene {id:60}
##
## 会把本局上限设成 99（避免测试时因回合数到顶直接结算），并把大厅里的玩家拉进竞技场
##

$scoreboard players set t_says.dbg.id board $(id)
$data modify storage minecraft:t_says_tmp id set value $(id)
scoreboard players set t_says.dbg.found board 0
scoreboard players set t_says.dbg.g board 0
function minecraft:t_says/debug/force_group

# 找到后：写入本局任务（scene/time/msg/start/judge/超时标记），再进入播报状态
execute if score t_says.dbg.found board matches 1 run function minecraft:t_says/lib/pick_task with storage minecraft:t_says_tmp

execute if score t_says.dbg.found board matches 1 run scoreboard players set t_says.round state 99
execute if score t_says.dbg.found board matches 1 run scoreboard players set t_says.round board 1
execute if score t_says.dbg.found board matches 1 run scoreboard players set t_says.has_finished board 0
execute if score t_says.dbg.found board matches 1 run function minecraft:t_says/reset
execute if score t_says.dbg.found board matches 1 as @a[team=t_says] run function minecraft:t_says/p_next_round
execute if score t_says.dbg.found board matches 1 run scoreboard players set t_says.time board 5
execute if score t_says.dbg.found board matches 1 run scoreboard players set t_says.say board 0
execute if score t_says.dbg.found board matches 1 run scoreboard players set t_says.state state 3
execute if score t_says.dbg.found board matches 1 run tellraw @a ["§a[T氏调试] 已强制加载任务 §eid=",{score:{name:"t_says.scene",objective:board}},"§a，马上播报。"]
execute if score t_says.dbg.found board matches 0 run tellraw @s ["§c[T氏调试] 任务表里找不到这个 id。"]

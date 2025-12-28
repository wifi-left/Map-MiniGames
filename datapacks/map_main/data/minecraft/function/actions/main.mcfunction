## 检测到玩家右键胡萝卜钓竿
execute as @a[scores={use.skill=1..}] at @s run function actions/carrot_stick_main
execute as @a[scores={use.skill.2=1..}] at @s run function actions/carrot_stick_main

## 检测玩家动作
# 跳跃
execute as @a[scores={action.jump=1..}] at @s run function minecraft:actions/jump
# 蹲下
execute as @a[scores={action.sneak=1..}] at @s run function minecraft:actions/sneak
# 走路
execute as @a[scores={action.walk=1..}] at @s run function minecraft:actions/walk
# 跑步
execute as @a[scores={action.sprint=1..}] at @s run function minecraft:actions/sprint
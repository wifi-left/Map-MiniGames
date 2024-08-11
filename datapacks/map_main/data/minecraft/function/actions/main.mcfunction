# 检测到玩家右键胡萝卜钓竿
execute as @a[scores={use.skill=1..}] at @s run function actions/carrot_stick_main
execute as @a[scores={use.skill.2=1..}] at @s run function actions/carrot_stick_main

# 检测玩家跳跃
execute as @a[scores={action.jump=1..}] at @s run function minecraft:actions/jump
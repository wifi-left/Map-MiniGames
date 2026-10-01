## 击杀生物：id 81「击杀一个木乃伊」用对 → 完成
## 统计项 t_says.kills = minecraft.custom:minecraft.mob_kills，本局场地上只有木乃伊可打，
## 且是按玩家统计，所以"谁打死的算谁的"（谁先打死谁拿第一档金币）
execute unless score t_says.state state matches 1 run return fail

execute if score t_says.scene board matches 81 run function minecraft:t_says/judge/give_judge/finish

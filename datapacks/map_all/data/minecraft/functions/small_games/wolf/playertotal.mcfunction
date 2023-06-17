# tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=0..0}] ["\u00a7d你的身份是 \u00a7a\u00a7l[平民 Civilian]"]
# tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=1}] ["\u00a7d你的身份是 \u00a7a\u00a7l[狼人 Wolf]"]
# tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=2}] ["\u00a7d你的身份是 \u00a7a\u00a7l[女巫 Vitch]"]
# tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=3}] ["\u00a7d你的身份是 \u00a7a\u00a7l[预言家 Prohet]"]
# tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=4}] ["\u00a7d你的身份是 \u00a7a\u00a7l[守卫 Guard]"]
# 女巫
scoreboard players set LRS_RS_NV board 0 
execute as @a[team=Who_Killer_Text,scores={LRS_JOB=2}] run scoreboard players add LRS_RS_NV board 1
# 守卫
scoreboard players set LRS_RS_GA board 0 
execute as @a[team=Who_Killer_Text,scores={LRS_JOB=4}] run scoreboard players add LRS_RS_GA board 1
# 狼人
scoreboard players set LRS_RS_WO board 0 
execute as @a[team=Who_Killer_Text,scores={LRS_JOB=1}] run scoreboard players add LRS_RS_WO board 1
# 预言家
scoreboard players set LRS_RS_PR board 0 
execute as @a[team=Who_Killer_Text,scores={LRS_JOB=3}] run scoreboard players add LRS_RS_PR board 1
# 平民
scoreboard players set LRS_RS_PM board 0
execute as @a[team=Who_Killer_Text,scores={LRS_JOB=0}] run scoreboard players add LRS_RS_PM board 1

tellraw @a[team=Who_Killer_Text] ["\n\u00a7b ※ 人数总结：\n\n","   ",{"score":{"objective": "board","name": "LRS_RS_PM"},"color":"gold"},"\u00a7a个平民\n","   ",{"score":{"objective": "board","name": "LRS_RS_NV"},"color":"gold"},"\u00a7a个女巫\n","   ",{"score":{"objective": "board","name": "LRS_RS_WO"},"color":"gold"},"\u00a7a个狼人\n","   ",{"score":{"objective": "board","name": "LRS_RS_GA"},"color":"gold"},"\u00a7a个守卫\n","   ",{"score":{"objective": "board","name": "LRS_RS_PR"},"color":"gold"},"\u00a7a个预言家\n"]
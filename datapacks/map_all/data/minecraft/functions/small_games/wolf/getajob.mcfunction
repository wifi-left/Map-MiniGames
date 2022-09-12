tellraw @a[team=Who_Killer_Text] ["\u00a76[狼人杀] \u00a7a游戏开始！"]
scoreboard players set @a[team=Who_Killer_Text] LRS_JOB 0
scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 1
scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 2
scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 3
# ＞ 6
scoreboard players set LRS_RS board 0
execute as @a[team=Who_Killer_Text,gamemode=adventure] run scoreboard players add LRS_RS board 1
# execute as @a[]
execute if score LRS_RS board >= 4 board run scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 4
execute if score LRS_RS board >= 6 board run scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 1

title @a[team=Who_Killer_Text] title ["\u00a7d\u00a7l你的身份是"]
title @a[team=Who_Killer_Text,scores={LRS_JOB=0..0}] subtitle ["\u00a7a平民 Civilian"]
title @a[team=Who_Killer_Text,scores={LRS_JOB=1..1}] subtitle ["\u00a7c狼人 Wolf"]
title @a[team=Who_Killer_Text,scores={LRS_JOB=2}] subtitle ["\u00a75女巫 Vitch"]
title @a[team=Who_Killer_Text,scores={LRS_JOB=3}] subtitle ["\u00a7b预言家 Prohet"]
title @a[team=Who_Killer_Text,scores={LRS_JOB=4}] subtitle ["\u00a76守卫 Guard"]
tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=0..0}] ["\u00a7d你的身份是 \u00a7a\u00a7l[平民 Civilian]"]
tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=1}] ["\u00a7d你的身份是 \u00a7a\u00a7l[狼人 Wolf]"]
tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=2}] ["\u00a7d你的身份是 \u00a7a\u00a7l[女巫 Vitch]"]
tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=3}] ["\u00a7d你的身份是 \u00a7a\u00a7l[预言家 Prohet]"]
tellraw @a[team=Who_Killer_Text,scores={LRS_JOB=4}] ["\u00a7d你的身份是 \u00a7a\u00a7l[守卫 Guard]"]

function small_games/wolf/playertotal
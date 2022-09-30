tellraw @a[team=Who_Killer_Text] ["\u00a76[狼人杀] \u00a7a游戏开始！"]
scoreboard players set @a[team=Who_Killer_Text] LRS_JOB 0
scoreboard players set @a[team=Who_Killer_Text,tag=GOABLE.SPEC] LRS_JOB -1
scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0},tag=!GOABLE.SPEC] LRS_JOB 1
scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0},tag=!GOABLE.SPEC] LRS_JOB 2
scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0},tag=!GOABLE.SPEC] LRS_JOB 3
# ＞ 6
scoreboard players set LRS_RS board 0
execute as @a[team=Who_Killer_Text,gamemode=adventure] run scoreboard players add LRS_RS board 1
# execute as @a[]
execute if score LRS_RS board matches 4.. run scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 4
execute if score LRS_RS board matches 4.. run tellraw @a[team=Who_Killer_Text] ["\n   \u00a7b\u00a7l本局神职配置\n\n\u00a7a   狼人 * 1； 女巫 * 1；预言家 * 1\n"]

execute if score LRS_RS board matches 4..5 run tellraw @a[team=Who_Killer_Text] ["\n   \u00a7b\u00a7l本局神职配置\n\n\u00a7a   狼人 * 1； 守卫 * 1；女巫 * 1；预言家 * 1\n"]
execute if score LRS_RS board matches 6.. run scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 1
execute if score LRS_RS board matches 6..7 run tellraw @a[team=Who_Killer_Text] ["\n   \u00a7b\u00a7l本局神职配置\n\n\u00a7a   狼人 * 2； 守卫 * 1；女巫 * 1；预言家 * 1\n"]
# ＞ 8
# execute as @a[]
execute if score LRS_RS board matches 8.. run scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 1
execute if score LRS_RS board matches 8..9 run tellraw @a[team=Who_Killer_Text] ["\n   \u00a7b\u00a7l本局神职配置\n\n\u00a7a   狼人 * 3； 守卫 * 1；女巫 * 1；预言家 * 1\n"]
# ＞ 10
# execute as @a[]
execute if score LRS_RS board matches 10.. run scoreboard players set @r[team=Who_Killer_Text,scores={LRS_JOB=0..0}] LRS_JOB 1
execute if score LRS_RS board matches 10.. run tellraw @a[team=Who_Killer_Text] ["\n   \u00a7b\u00a7l本局神职配置\n\n\u00a7a   狼人 * 4； 守卫 * 1；女巫 * 1；预言家 * 1\n"]

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

tellraw @a[tag=GOABLE.SPEC,team=Who_Killer_Text] ["\n\u00a7b\u00a7l   本局职业信息\n"]
tellraw @a[tag=GOABLE.SPEC,team=Who_Killer_Text] ["\u00a7c狼人：",{"selector":"@a[scores={LRS_JOB=1}]"}]
tellraw @a[tag=GOABLE.SPEC,team=Who_Killer_Text] ["\u00a7e女巫：",{"selector":"@a[scores={LRS_JOB=2}]"}]
tellraw @a[tag=GOABLE.SPEC,team=Who_Killer_Text] ["\u00a7b预言家：",{"selector":"@a[scores={LRS_JOB=3}]"}]
tellraw @a[tag=GOABLE.SPEC,team=Who_Killer_Text] ["\u00a7d守卫：",{"selector":"@a[scores={LRS_JOB=4}]"}]
tellraw @a[tag=GOABLE.SPEC,team=Who_Killer_Text] ["\u00a7a平民：",{"selector":"@a[scores={LRS_JOB=0}]"}]
tellraw @a[tag=GOABLE.SPEC,team=Who_Killer_Text] ["\u00a7c\u00a7l为了玩家的游戏体验，请不要透露这些信息。\n"]
function small_games/wolf/playertotal
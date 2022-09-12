tag @a[limit=1,scores={SP=-1..,LRS_JOB=3},gamemode=adventure] add lrs.job.sel
execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = lrs.job.sel SP run tag @s add lrs.sel
# execute if entity @a[tag=lrs.sel,tag=protected]
# tag @a[tag=lrs.sel,tag=!protected] add lrs.out
function small_games/wolf/step/morning
execute if entity @a[tag=lrs.sel,scores={LRS_JOB=1}] run tellraw lrs.job.sel ["\u00a76 --> \u00a7c",{"selector":"@a[tag=lrs.sel]"}," \u00a7c是坏人。"]
execute if entity @a[tag=lrs.sel,scores={LRS_JOB=1}] run title lrs.job.sel subtitle ["\u00a7c你检测到他是坏人。"]
execute if entity @a[tag=lrs.sel,scores={LRS_JOB=0..0}] run tellraw lrs.job.sel ["\u00a76 --> \u00a7a",{"selector":"@a[tag=lrs.sel]"},"\u00a7a 是好人。"]
execute if entity @a[tag=lrs.sel,scores={LRS_JOB=0..0}] run title lrs.job.sel subtitle ["\u00a7a你检测到他是好人。"]
execute if entity @a[tag=lrs.sel,scores={LRS_JOB=2..4}] run tellraw lrs.job.sel ["\u00a76 --> \u00a7a",{"selector":"@a[tag=lrs.sel]"}," \u00a7a是好人。"]
execute if entity @a[tag=lrs.sel,scores={LRS_JOB=2..4}] run title lrs.job.sel subtitle ["\u00a7a你检测到他是好人。"]
tag @a remove lrs.sel
tag @a remove lrs.job.sel
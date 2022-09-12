execute if entity @a[limit=1,scores={SP=0..,LRS_JOB=2},gamemode=adventure] if score vitch.kill board matches 1.. as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[limit=1,scores={SP=0..,LRS_JOB=2},gamemode=adventure] SP run tag @s add lrs.sel
execute if entity @a[limit=1,scores={SP=0..,LRS_JOB=2},gamemode=adventure] if score vitch.kill board matches 1.. as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[limit=1,scores={SP=0..,LRS_JOB=2},gamemode=adventure] SP run tellraw @a[scores={SP=-1,LRS_JOB=2},gamemode=adventure] ["\u00a76 --> \u00a7c你毒死了 ",{"selector":"@a[tag=lrs.sel]"}]
execute if entity @a[limit=1,scores={SP=-1,LRS_JOB=2},gamemode=adventure] if score vitch.help board matches 1.. run tellraw @a[scores={SP=-1,LRS_JOB=2},gamemode=adventure] ["\u00a76 --> \u00a7a你救助了 ",{"selector":"@a[tag=lrs.out]"}]
execute if entity @a[limit=1,scores={SP=-1,LRS_JOB=2},gamemode=adventure] if score vitch.help board matches 1.. run tag @a[tag=lrs.out] remove lrs.out
execute if entity @a[limit=1,scores={SP=-1,LRS_JOB=2},gamemode=adventure] if score vitch.help board matches 1.. run scoreboard players remove vitch.help board 1
# execute if entity @a[tag=lrs.sel,tag=protected]

tag @a[tag=lrs.sel] add lrs.out
execute if entity @a[tag=lrs.sel] run scoreboard players remove vitch.kill board 1
tag @a remove lrs.sel
function small_games/wolf/step/prohet
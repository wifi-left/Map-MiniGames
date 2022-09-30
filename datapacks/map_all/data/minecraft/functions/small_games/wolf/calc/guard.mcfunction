execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[limit=1,scores={SP=-1..,LRS_JOB=4},gamemode=adventure] SP run tag @s add lrs.sel
execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[limit=1,scores={SP=-1..,LRS_JOB=4},gamemode=adventure] SP run tellraw @a[scores={SP=-1..,LRS_JOB=4},gamemode=adventure] ["\u00a76 --> \u00a7a你保护了 ",{"selector":"@a[tag=lrs.sel]"}]
execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[limit=1,scores={SP=-1..,LRS_JOB=4},gamemode=adventure] SP run tellraw @a[team=Who_Killer_Text,tag=GOABLE_SPEC] ["\u00a76 --> ",{"selector":"@a[scores={SP=-1..,LRS_JOB=4},gamemode=adventure]"},"\u00a7a保护了 ",{"selector":"@a[tag=lrs.sel]"}]
tag @a remove protected
tag @a[tag=lrs.sel] add protected
tag @a remove lrs.sel
function small_games/wolf/step/wolf
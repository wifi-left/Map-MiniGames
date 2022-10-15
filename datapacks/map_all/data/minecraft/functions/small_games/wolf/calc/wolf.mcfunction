execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[limit=1,scores={SP=-1..,LRS_JOB=1},gamemode=adventure] SP run tag @s add lrs.sel
# execute if entity @a[tag=lrs.sel,tag=protected]
tellraw @a[scores={SP=-1..,LRS_JOB=1},gamemode=adventure] ["\u00a76 --> \u00a7c你杀死了 ",{"selector":"@a[tag=lrs.sel]"}]
tellraw @a[team=Who_Killer_Text,tag=GOABLE.SPEC] ["\u00a76 --> ",{"selector":"@a[scores={SP=-1..,LRS_JOB=1},gamemode=adventure]"},"\u00a7c杀死了  ",{"selector":"@a[tag=lrs.sel]"}]
tag @a[tag=lrs.sel,tag=!protected] add lrs.out
tag @a remove lrs.sel
function small_games/wolf/step/vitch
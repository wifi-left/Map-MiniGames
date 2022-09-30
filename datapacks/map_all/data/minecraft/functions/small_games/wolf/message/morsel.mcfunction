tag @s add taged
tag @s add sel
execute if score @s SP matches 0.. run execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[tag=sel,limit=1] SP run tag @s add lrs.sel
execute if score @s SP matches 0.. run tellraw @s ["\u00a76 --> \u00a7d你投票给了 ",{"selector":"@a[tag=lrs.sel]"},"\n\u00a7c本次你将无法继续投票。"]
execute if score @s SP matches 0.. run tellraw @a[team=Who_Killer_Text,tag=GOABLE_SPEC] ["\u00a76 --> ",{"selector":"@s"},"\u00a7d投票给了 ",{"selector":"@a[tag=lrs.sel]"},""]
execute if score @s SP matches ..-1 run tellraw @s ["\u00a76 --> \u00a7d你放弃投票 ","\n\u00a7c本次你将无法继续投票。"]
execute if score @s SP matches ..-1 run tellraw @a[team=Who_Killer_Text,tag=GOABLE_SPEC] ["\u00a76 --> ",{"selector":"@s"},"\u00a7d放弃投票 ",""]

#tellraw @a[team=Who_Killer_Text,tag=GOABLE_SPEC] 
tag @a remove lrs.sel
tag @a remove sel

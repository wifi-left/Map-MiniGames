scoreboard players set lrs.max board 0
scoreboard players reset * LRS_CS
execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s run function small_games/wolf/calc/morningtotal
# execute if entity @a[tag=lrs.sel,tag=protected]
execute as @a[team=Who_Killer_Text,gamemode=adventure,scores={LRS_CS=1..}] run scoreboard players operation lrs.max board > @s LRS_CS
execute as @a[team=Who_Killer_Text,gamemode=adventure,scores={LRS_CS=1..}] if score @s LRS_CS = lrs.max board run tag @s add lrs.sel
# execute if 
scoreboard players set lrs.tmp board 0
execute as @a[tag=lrs.sel] run scoreboard players add lrs.tmp board 1
execute if score lrs.tmp board matches 2.. run tellraw @a[team=Who_Killer_Text] ["\u00a7c票数平局，投票无效！(",{"selector":"@a[tag=lrs.sel]"},"\u00a7c)"]
execute if score lrs.tmp board matches 2.. run tag @a remove lrs.sel
tag @a[tag=lrs.sel] add lrs.out
tag @a remove lrs.sel
gamemode spectator @a[tag=lrs.out,team=Who_Killer_Text]
execute as @a[tag=lrs.out,team=Who_Killer_Text] run tellraw @a[team=Who_Killer_Text] [{"selector":"@s"},"\u00a76 被投票出局。"]
tag @a remove lrs.out
function small_games/wolf/step/night
team leave @s
execute if score @s LRS_JOB matches 3 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7a纵火犯"]
execute if score @s LRS_JOB matches 1 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7e丘比特"]
execute if score @s LRS_JOB matches 2 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7a守卫"]
execute if score @s LRS_JOB matches 9 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7b猎人"]
execute if score @s LRS_JOB matches 8 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7a骑士"]
execute if score @s LRS_JOB matches 6 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7a预言家"]
execute if score @s LRS_JOB matches 7 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7d炸弹人"]
execute if score @s LRS_JOB matches 4 if entity @s[tag=wolf.white] run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a74白狼"]
execute if score @s LRS_JOB matches 5 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7a女巫"]
execute if score @s LRS_JOB matches 4 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7c狼"] 
execute if score @s LRS_JOB matches 0 run tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a7e：\u00a7b民"]
execute as @s[tag=wolf.connected] run tellraw @a[tag=wolf.tip] ["\u00a78 | \u00a7e该玩家被丘比特连接"]
# tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a70未知"]
team join wait.wolfpeople
gamemode spectator @s
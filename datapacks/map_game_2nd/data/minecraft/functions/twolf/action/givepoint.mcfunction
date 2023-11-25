# 应在初始化的时候分配
tag @e[tag=wolf.tppoint] remove wolf.used
kill @e[tag=wolf.nametags]
scoreboard players reset @e[tag=wolf.tp.sell,limit=1] 
execute as @a[gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/givepoint

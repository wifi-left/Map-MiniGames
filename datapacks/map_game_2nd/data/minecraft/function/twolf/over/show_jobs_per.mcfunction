##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team leave @s
execute if score @s LRS_JOB matches 3 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§a纵火犯"]
execute if score @s LRS_JOB matches 1 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§e丘比特"]
execute if score @s LRS_JOB matches 2 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§a守卫"]
execute if score @s LRS_JOB matches 9 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§b猎人"]
execute if score @s LRS_JOB matches 8 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§a骑士"]
execute if score @s LRS_JOB matches 6 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§a预言家"]
execute if score @s LRS_JOB matches 7 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§d炸弹人"]
execute if score @s LRS_JOB matches 4 if entity @s[tag=wolf.white] run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§4白狼"]
execute if score @s LRS_JOB matches 5 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§a女巫"]
execute if score @s LRS_JOB matches 4 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§c狼"]
execute if score @s LRS_JOB matches 0 run tellraw @a[tag=wolf.tip] ["§d - ",{"selector":"@s"},"§e：§b民"]
execute as @s[tag=wolf.connected] run tellraw @a[tag=wolf.tip] ["§8 | §e该玩家被丘比特连接"]
# tellraw @a[tag=wolf.tip] ["\u00a7d - ",{"selector":"@s"},"\u00a70未知"]
team join wait.wolfpeople
gamemode spectator @s


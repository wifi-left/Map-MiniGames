# 统计人数
scoreboard players set wolf.r.all board 0
scoreboard players set wolf.r.bad board 0
scoreboard players set wolf.r.good board 0
scoreboard players set wolf.r.person board 0
scoreboard players set wolf.r.god board 0
scoreboard players set wolf.r.tnt board 0
scoreboard players set wolf.r.cupids board 0

execute as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,scores={LRS_JOB=0..}] run scoreboard players add wolf.r.all board 1

## 丘比特
execute if score wolf.cupid.type board matches 1 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 1 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 0 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 1 run scoreboard players add wolf.r.bad board 1

execute if score wolf.cupid.type board matches 2 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 1 run scoreboard players add wolf.r.cupids board 1
execute if score wolf.cupid.type board matches 2 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,tag=wolf.connected] unless score @s LRS_JOB matches 1 run scoreboard players add wolf.r.cupids board 1

## 好人
execute if score wolf.cupid.type board matches 0..1 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 0 run scoreboard players add wolf.r.person board 1
# execute if score wolf.cupid.type board matches 1 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 1..3 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 0..1 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 2..3 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 0..1 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 5..6 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 0..1 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 8 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 0..1 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 9 run scoreboard players add wolf.r.person board 1

execute if score wolf.cupid.type board matches 2 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,tag=!wolf.connected] if score @s LRS_JOB matches 0 run scoreboard players add wolf.r.person board 1
execute if score wolf.cupid.type board matches 2 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,tag=!wolf.connected] if score @s LRS_JOB matches 2..3 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 2 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,tag=!wolf.connected] if score @s LRS_JOB matches 5..6 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 2 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,tag=!wolf.connected] if score @s LRS_JOB matches 8 run scoreboard players add wolf.r.god board 1
execute if score wolf.cupid.type board matches 2 as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,tag=!wolf.connected] if score @s LRS_JOB matches 9 run scoreboard players add wolf.r.person board 1

scoreboard players operation wolf.r.good board += wolf.r.god board
scoreboard players operation wolf.r.good board += wolf.r.person board

## 坏人

execute as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople] if score @s LRS_JOB matches 4 run scoreboard players add wolf.r.bad board 1

## 炸弹人
execute as @a[tag=wolf.tip,gamemode=adventure,team=wolfpeople,tag=!wolf.connected] if score @s LRS_JOB matches 7 run scoreboard players add wolf.r.tnt board 1


scoreboard players set wolf.peoplecount.all board 0
scoreboard players set wolf.peoplecount board 0
scoreboard players set wolf.peoplecount.skip board 0
execute as @a[gamemode=adventure,team=wolfpeople] at @s run scoreboard players add wolf.peoplecount.all board 1
execute as @a[tag=wolf.toupaoed,gamemode=adventure,team=wolfpeople] at @s run scoreboard players add wolf.peoplecount board 1
execute as @a[tag=wolf.toupaoed,gamemode=adventure,scores={LRS_CS=-1}] at @s run scoreboard players add wolf.peoplecount.skip board 1

scoreboard players set 3 board 3
scoreboard players operation wolf.OtoT board = wolf.peoplecount.all board
scoreboard players operation wolf.OtoT board /= 3 board
scoreboard players operation wolf.OtoT board += wolf.OtoT board

execute if score wolf.peoplecount.skip board >= wolf.OtoT board run function minecraft:twolf/control/day/skipp 
execute if score wolf.peoplecount board >= wolf.peoplecount.all board run scoreboard players set wolf.event board 10
execute if score wolf.peoplecount board >= wolf.peoplecount.all board run function minecraft:twolf/events/next_event 

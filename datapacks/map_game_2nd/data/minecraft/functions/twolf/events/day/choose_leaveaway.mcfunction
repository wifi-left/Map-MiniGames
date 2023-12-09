scoreboard players set wolf.peoplecount board 0
# execute as @a[tag=wolf.tip,team=wolfpeople,gamemode=adventure] at @s run scob

scoreboard players reset @a LRS_ZT
execute as @a[tag=wolf.tip,team=wolfpeople,gamemode=adventure] at @s run function minecraft:twolf/events/day/toupiao/per
# LRS_ZT
scoreboard players set wolf.highest.score board -1
execute as @a[tag=wolf.tip,team=wolfpeople,gamemode=adventure] at @s run function minecraft:twolf/events/day/toupiao/findhighest

scoreboard players set 3 board 3
scoreboard players operation wolf.OtoT board = wolf.peoplecount board
scoreboard players operation wolf.OtoT board /= 3 board

execute if score wolf.highest.score board matches ..0 run tellraw @a[tag=wolf.tip] ["\u00a7c投票票数为0，投票无效。"]
execute unless score wolf.highest.score board matches ..0 if score wolf.highest.score board < wolf.OtoT board run tellraw @a[tag=wolf.tip] ["\u00a7c投票票数小于总人数 1/3，投票无效。"]
execute if score wolf.highest.score board >= wolf.OtoT board run function minecraft:twolf/events/day/chooseout

scoreboard players reset * LRS_ZT
function twolf/overdetect

execute unless score wolf.event board matches 12 run scoreboard players set wolf.event board 18
execute unless score wolf.event board matches 12 run function minecraft:twolf/events/next_event
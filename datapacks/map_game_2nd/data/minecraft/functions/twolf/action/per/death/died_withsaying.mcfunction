execute if score @s LRS_JOB matches 9 run function minecraft:twolf/action/per/death/hunter/trigger
execute if score @s LRS_JOB matches 9 run return 0
tag @s add wolf.sell

execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
execute as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (已阵亡)"]'}
execute as @e[tag=wolf.tp.sell,limit=1,tag=wolf.knight] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (骑士，已阵亡)"]'}

tag @e[tag=wolf.tp.sell] add wolf.died
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell


scoreboard players set wolf.ttime board -1

scoreboard players add wolf.time board 15

team join wait.wolfpeople
# tellraw @s ["\u00a7c你死了"]
# execute at @s run tp @s ~ -20 ~
tag @s remove wolf.sell
function minecraft:twolf/action/per/death/died_all
tellraw @a[tag=wolf.tip] [{"selector":"@s"},"\u00a7c 死了。他可以说遗言。"]

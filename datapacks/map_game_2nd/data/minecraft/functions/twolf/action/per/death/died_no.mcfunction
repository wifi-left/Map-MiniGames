tag @s add wolf.sell
execute if score @s LRS_JOB matches 9 run function minecraft:twolf/action/per/death/hunter/trigger
execute if score @s LRS_JOB matches 9 run return 0
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
execute as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (已阵亡)"]'}
execute as @e[tag=wolf.tp.sell,limit=1,tag=wolf.knight] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (骑士，已阵亡)"]'}

tag @e[tag=wolf.tp.sell] add wolf.died
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell

tellraw @a[tag=wolf.tip] [{"selector":"@s"},"\u00a7c 死了。"]

function minecraft:twolf/action/per/death/died_all
tellraw @s ["\n\u00a7e\u00a7lWARNING：\u00a76你不可以说遗言。\n"]


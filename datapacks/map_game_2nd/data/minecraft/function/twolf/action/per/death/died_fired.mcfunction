##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score @s LRS_JOB matches 9 run function minecraft:twolf/action/per/death/hunter/fire
execute if score @s LRS_JOB matches 9 run function minecraft:twolf/action/per/death/hunter/trigger
execute if score @s LRS_JOB matches 9 run return 0
tag @s add wolf.sell

execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:["\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\u00a7c (已阵亡)"]}

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=wolf.tp.sell,limit=1,tag=wolf.knight] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:["\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\u00a7c (骑士，已阵亡)"]}

tag @e[tag=wolf.tp.sell] add wolf.died
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell

tellraw @a[tag=wolf.tip] [{"selector":"@s"},"§c 死了。"]

execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 4 run tag @s add wolf.wolf
execute as @a[limit=1,sort=random,tag=wolf.wolf] run function minecraft:twolf/action/per/death/died
tag @a remove wolf.wolf
say debug
function minecraft:twolf/action/per/death/died_all
tellraw @s ["\n§e§lWARNING：§6你不可以说遗言。\n"]



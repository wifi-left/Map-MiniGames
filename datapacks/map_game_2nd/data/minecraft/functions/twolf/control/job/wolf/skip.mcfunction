tellraw @a[tag=wolf.acting] ["\u00a7d[!] ",{"selector":"@s"}," \u00a7c放弃了操作。"]
function minecraft:twolf/action/per/tpback
scoreboard players set wolf.tmp board 0
tag @s remove wolf.acting
execute as @a[tag=wolf.acting,gamemode=adventure] run scoreboard players add wolf.tmp board 1
execute if score wolf.tmp board matches ..0 run function minecraft:twolf/control/job/wolf/next
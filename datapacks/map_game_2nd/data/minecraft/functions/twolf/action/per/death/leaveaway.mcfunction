execute if score @s LRS_JOB matches 7 run function minecraft:twolf/action/per/death/boom

execute if score @s LRS_JOB matches 9 run function minecraft:twolf/action/per/death/hunter/trigger
execute if score @s LRS_JOB matches 9 run return 0
tag @s add wolf.sell

execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
execute unless score @s LRS_JOB matches 7 as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (被放逐)"]'}
execute if score @s LRS_JOB matches 7 as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (炸弹人，被放逐)"]'}
execute as @e[tag=wolf.tp.sell,limit=1,tag=wolf.knight] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (骑士，被放逐)"]'}

tag @e[tag=wolf.tp.sell] add wolf.died
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell

tellraw @a[tag=wolf.tip] [{"selector":"@s"},"\u00a7c 被放逐了。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle [{"selector":"@s"},"\u00a7c 被放逐了。"]


gamemode spectator
team join wait.wolfpeople
scoreboard players add wolf.deathcount board 1
tellraw @s ["\u00a7c你被放逐了\n\u00a7b你已进入等待队列。为保证游戏体验，请使用 \u00a76/tm <消息>\u00a7b 在旁观玩家中交流"]

# tellraw @s ["\u00a7c你死了"]
# execute at @s run tp @s ~ -20 ~
tag @s remove wolf.sell

tag @s remove wolf.protected
tag @s remove wolf.killed
tag @s remove wolf.fired
tag @s remove wolf.rescued
tag @s remove wolf.poisoned
tag @s remove wolf.lastprotected

execute as @s[tag=wolf.connected] run function minecraft:twolf/action/per/death/died_cupid
tag @s remove wolf.connected

tellraw @s ["\n\u00a7e\u00a7lWARNING：\u00a76你不可以说遗言。\n"]


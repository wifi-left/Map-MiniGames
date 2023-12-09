scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board -1
execute as @a[tag=wolf.acting] run function minecraft:twolf/action/per/tpback
tellraw @a[tag=wolf.tip] ["\u00a7c请闭眼。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a7f请闭眼。"]
schedule function minecraft:twolf/events/next_event 4s
effect clear @s invisibility
tellraw @a[tag=bw.show.target] ["\u00a7c你的显身陷阱已被触发，周围玩家：",{selector:"@a[distance=..8,gamemode=adventure]"}]
title @a[tag=bw.show.target] title ["\u00a7c陷阱被触发"]
title @a[tag=bw.show.target] subtitle ["\u00a7f你的显身陷阱已被触发：",{selector:"@s"}]
execute as @a[tag=bw.show.target] at @s run playsound entity.polar_bear.warning player @s ~ ~ ~ 1 0 1
execute at @s run playsound entity.polar_bear.warning player @s ~ ~ ~ 1 0 1
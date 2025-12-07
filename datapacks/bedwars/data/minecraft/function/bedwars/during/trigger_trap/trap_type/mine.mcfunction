effect give @s minecraft:mining_fatigue 5 1 true
tellraw @a[tag=bw.show.target] ["\u00a7c你的挖掘疲劳陷阱已被触发"]
title @a[tag=bw.show.target] title ["\u00a7c陷阱被触发"]
title @a[tag=bw.show.target] subtitle ["\u00a7f你的挖掘疲劳陷阱已被触发"]
execute as @a[tag=bw.show.target] at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
# execute as @s at @s run playsound entity.polar_bear.warning player @s ~ ~ ~ 1 1 1
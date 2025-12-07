effect give @s minecraft:slowness 5 2 true
effect give @s minecraft:blindness 5 2 true
tellraw @a[tag=bw.show.target] ["\u00a7c你的缓慢失明陷阱已被触发"]
title @a[tag=bw.show.target] title ["\u00a7c陷阱被触发"]
title @a[tag=bw.show.target] subtitle ["\u00a7f你的缓慢失明陷阱已被触发"]
execute as @a[tag=bw.show.target] at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
# execute as @s at @s run playsound entity.polar_bear.warning player @s ~ ~ ~ 1 1 1
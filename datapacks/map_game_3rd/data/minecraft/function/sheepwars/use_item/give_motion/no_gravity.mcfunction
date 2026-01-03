execute unless block ^ ^ ^0.5 #can_glide_through unless block ^ ^ ^0.5 #air run return run function minecraft:sheepwars/use_item/target/stop
execute positioned ^ ^ ^2 if entity @a[gamemode=survival,distance=..1] run return run function minecraft:sheepwars/use_item/target/stop
rotate @s ~ ~
tp @s ^ ^ ^0.25
kill @e[tag=t.tmp,type=marker]

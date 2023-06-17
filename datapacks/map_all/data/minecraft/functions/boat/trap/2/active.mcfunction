execute as @a[team=boat,distance=0..6] at @s run tp ~ ~0.5 ~
execute as @a[team=boat,distance=0..6] at @s run effect give @s slowness 1 25 true
particle minecraft:explosion ~ ~ ~ 1 1 1 1 5
playsound entity.generic.explode player @a[distance=0..6,team=boat] ~ ~ ~ 5 1 1
title @a[distance=0..6,team=boat] title [""]
title @a[distance=0..6,team=boat] subtitle ["\u00a7c你触发了陷阱"]

kill @s
effect give @e[distance=0..6,team=boat] slowness 5 5 true
effect give @a[distance=0..6,team=boat] blindness 5 5 true
particle minecraft:explosion ~ ~ ~ 1 1 1 1 5
playsound entity.generic.explode player @a[distance=0..6,team=boat] ~ ~ ~ 5 1 1
title @a[distance=0..6,team=boat] title [""]
title @a[distance=0..6,team=boat] subtitle ["\u00a7c你触发了陷阱"]
kill @s

execute in airworld as @a[team=play.sur.zom] at @s run function compasstrack:updatecompass

execute as @a[team=play.sur.zom] at @s run effect give @a[distance=0..7,team=play.sur] glowing 2 25 true
execute as @a[team=play.sur] at @s run effect give @a[distance=0..7,team=play.sur.zom] glowing 2 25 true
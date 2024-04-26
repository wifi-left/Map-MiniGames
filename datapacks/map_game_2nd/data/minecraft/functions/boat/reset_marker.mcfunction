# setblock ~ ~ ~ air
fill ~ ~ ~ ~15 ~15 ~31 air
kill @e[type=item,distance=0..30]
execute store result storage boat:main random int 1 run random value 1..15
execute as @s[tag=boat.reset.structure.water] at @s run data merge storage boat:main {type:"water"}
execute as @s[tag=boat.reset.structure.normal] at @s run data merge storage boat:main {type:"ice"}
function minecraft:boat/reset_set_random with storage boat:main
# PIG
execute as @s[tag=boat.reset.structure.water] if score boat.type board matches 2 run fill ~ ~ ~ ~16 ~16 ~31 grass_block replace water
# HORSE
execute as @s[tag=boat.reset.structure.water] if score boat.type board matches 5 run fill ~ ~ ~ ~16 ~16 ~31 grass_block replace water
# 炽足兽
execute as @s[tag=boat.reset.structure] if score boat.type board matches 3 run fill ~ ~ ~ ~16 ~16 ~31 lava replace water
# /say @e[tag=boat.reset.structure.normal]
# /say @e[tag=boat.reset.structure.water]
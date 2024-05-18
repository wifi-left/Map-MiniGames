scoreboard players set sw.state state 0
execute as @a[team=wait.sw] at @s run function minecraft:cloud/join
execute as @a[team=play.sw] at @s run function minecraft:cloud/join
execute positioned 688 -1 352 run kill @e[type=item,distance=0..200]
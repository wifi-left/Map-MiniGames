scoreboard players set sheepwars.time tick 0
execute as @a[team=play.sheepwars.a,gamemode=adventure] at @s run function minecraft:sheepwars/player/true_start
execute as @a[team=play.sheepwars.b,gamemode=adventure] at @s run function minecraft:sheepwars/player/true_start
scoreboard players set sheepwars.state state 3
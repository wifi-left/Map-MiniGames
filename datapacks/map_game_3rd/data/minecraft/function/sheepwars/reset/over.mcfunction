forceload remove 431 826 509 748
scoreboard players set sheepwars.time tick 6
scoreboard players set sheepwars.state state 2
execute as @a[team=play.sheepwars.a] in airworld run function minecraft:sheepwars/player/random_tp
execute as @a[team=play.sheepwars.b] in airworld run function minecraft:sheepwars/player/random_tp
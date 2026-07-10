scoreboard players set sheepwars.state state 100
gamemode spectator @a[team=play.sheepwars.a]
gamemode spectator @a[team=play.sheepwars.b]
gamemode spectator @a[team=wait.sheepwars]
execute in airworld positioned 370 -47 861 run kill @e[type=item,distance=..50]
execute in airworld positioned 370 -47 861 run kill @e[type=sheep,distance=..50]
forceload remove 412 822 332 900
schedule function minecraft:sheepwars/over/tp 5s
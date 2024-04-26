# say 1

function o_f_tick
execute if score zombie.state state matches 1.. run function zombieever/o_f_tick

spawnpoint @a[team=wait.zombie] -202 17 353
spawnpoint @a[team=lobby] 188 124 26 0

scoreboard players set wait.hit.player tick 0 
execute as @a[team=wait.repel] run scoreboard players add wait.hit.player tick 1

scoreboard players set wait.live.player tick 0 
execute as @a[team=wait.live] run scoreboard players add wait.live.player tick 1

scoreboard players set wait.park.player tick 0 
execute as @a[team=wait.parkour] run scoreboard players add wait.park.player tick 1

execute if score zombie.debug state matches 1 run function zombieever/test/display
execute if score battle.state state matches 1.. in overworld run function battle/second

effect give @a[team=wait.battle] resistance 5 25 true
effect give @a[team=wait.battle] regeneration 5 25 true

effect give @a[team=wait.tntwars] resistance 5 25 true
effect give @a[team=play.tntwars] resistance 5 25 true

effect give @a[team=hide.wait] resistance 9999 25 true
effect give @a[team=hide.wait2] resistance 9999 25 true
effect give @a[team=hide.killer] resistance 9999 25 true
effect give @a[team=hide.killer] strength 2 20 true
effect give @a[team=hide.killer] glowing 2 2 true

execute if score btw.state state matches 1.. in overworld run function boatwars/second

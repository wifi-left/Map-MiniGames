##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s remove wolf.acting
tag @s remove wolf.protected
tag @s remove wolf.killed
tag @s remove wolf.fired
tag @s remove wolf.poisoned
tag @s remove wolf.rescued
tag @s remove wolf.lastprotected
tag @s remove wolf.acting
tag @s remove wolf.white
tag @s remove wolf.connected
tag @s remove sur.killedbyzom
tag @s remove bw.play
tag @s remove bw.player
tag @s remove boat.notinboats
tag @s remove play.total
tag @s remove bw.shears
tag @s remove boat.notinboat
tag @s remove tntwars.a
tag @s remove tntwars.b
tag @s remove touzi.team.a
tag @s remove touzi.team.b
# tag @s remove
xp set @s 0 levels
xp set @s 0 points

execute in overworld run spawnpoint @s 209 84 27

advancement grant @s only minigames
advancement grant @s only egg
advancement grant @s only games
advancement grant @s only unbelievable

title @s reset
bossbar set minecraft:golf players @a[team=golf]


##
## Datapack Upgrader v1.0.2 by wifi_left
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
tag @s remove endless.vampire

tag @s remove stronghold.alive
# tag @s remove
xp set @s 0 levels
xp set @s 0 points

execute in overworld run spawnpoint @s 209 84 27

advancement grant @s only minigames
advancement grant @s only egg
advancement grant @s only games
advancement grant @s only unbelievable

recipe take @s *

title @s reset
bossbar set minecraft:golf players @a[team=golf]
scoreboard players reset @s player.board

attribute @s safe_fall_distance modifier remove parkour_safe_fall
# attribute @s  modifier remove parkour_safe_fall
bossbar set stronghold players @a[team=stronghold]
bossbar set stronghold.boss players @a[team=stronghold]

attribute @s gravity modifier remove pvp
attribute @s armor modifier remove pvp
attribute @s safe_fall_distance modifier remove pvp
attribute @s armor_toughness modifier remove pvp
attribute @s max_health modifier remove pvp
attribute @s movement_efficiency modifier remove pvp
attribute @s movement_speed modifier remove pvp
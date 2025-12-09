tag @s remove chess.a
tag @s remove chess.b
tag @s remove chess.c
tag @s remove chess.d
tag @s remove chess.white
tag @s remove chest.white
tag @s remove chess.black
tag @s remove chest.black
tag @s remove miner.win
tag @s remove wolf.acting
tag @s remove random_parkour.win
tag @s remove hp.flag
tag @s remove hot.hit
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
tag @s remove ball.teama
tag @s remove ball.teamb
tag @s remove killer.killer
tag @s remove killer.runner
tag @s remove killer.saver
tag @s remove no_health
tag @s remove parkouring
tag @s remove stronghold.alive
tag @s remove bw.attack
tag @s remove bw.armor
tag @s remove bw.speed
tag @s remove bw.jump
tag @s remove bw.fasti
tag @s remove bw.fastii
tag @s remove bw.shears
tag @s remove bw.show.target
tag @s remove merchant.alive
#
xp set @s 0 levels
xp set @s 0 points

execute in overworld run spawnpoint @s 188 120 26 0 0
attribute @s minecraft:attack_speed base reset

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

attribute @s minecraft:max_health base reset
attribute @s gravity modifier remove pvp
attribute @s armor modifier remove pvp
attribute @s safe_fall_distance modifier remove pvp
attribute @s armor_toughness modifier remove pvp
attribute @s max_health modifier remove pvp
attribute @s movement_efficiency modifier remove pvp
attribute @s movement_speed modifier remove pvp
attribute @s max_health modifier remove desk
tag @s remove merchant.player
tag @s remove desk.russia.lock
tag @s remove desk.russia.hitted
tag @s remove desk.russia.nowround
scoreboard players reset @s order
tag @s remove pacman.nokiller
tag @s remove pacman.tobecalc
tag @s remove merchant.win

tag @s remove pacman.win
tag @s remove job_pvp.died
tag @s remove bw.triggeredtrap
tag @s remove merchant.turn.now

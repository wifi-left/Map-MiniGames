scoreboard players set ball.teama.player tick 0
scoreboard players set ball.teamb.player tick 0
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teama] run scoreboard players add ball.teama.player tick 1
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teamb] run scoreboard players add ball.teamb.player tick 1

execute if score ball.teamb.player tick = ball.teama.player tick run return run function minecraft:ballgame/actions/dodgeball/roundwin/pingju
execute if score ball.teamb.player tick > ball.teama.player tick run return run function minecraft:ballgame/actions/dodgeball/roundwin/b
execute if score ball.teamb.player tick < ball.teama.player tick run return run function minecraft:ballgame/actions/dodgeball/roundwin/a
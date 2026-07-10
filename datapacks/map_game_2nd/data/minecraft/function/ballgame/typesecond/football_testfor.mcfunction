scoreboard players set ball.teama.player tick 0
scoreboard players set ball.teamb.player tick 0
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teama] run scoreboard players add ball.teama.player tick 1
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teamb] run scoreboard players add ball.teamb.player tick 1

execute if score ball.teamb.player tick matches ..0 if score ball.teama.player tick matches ..0 run return run function minecraft:ballgame/over/pingju
execute if score ball.teama.player tick matches ..0 run return run function minecraft:ballgame/over/b
execute if score ball.teamb.player tick matches ..0 run return run function minecraft:ballgame/over/a
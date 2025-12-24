clear @a[team=ballgame,gamemode=adventure]
execute as @a[team=ballgame,gamemode=adventure] run function minecraft:ballgame/actions/dodgeball/strength_item

scoreboard players set ballgame.state state 1
scoreboard players set ball.time board 60
scoreboard players operation ball.time board *= ballgame.time state
scoreboard players add ball.time board 1
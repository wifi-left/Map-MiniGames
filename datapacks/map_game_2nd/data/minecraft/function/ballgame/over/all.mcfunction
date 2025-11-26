function minecraft:ballgame/ball/kill_ball
scoreboard players set ballgame.state state 100
gamemode spectator @a[team=ballgame,gamemode=!creative]
schedule function minecraft:ballgame/over/tp 5s replace
tag @a remove ball.teama
tag @a remove ball.teamb
function minecraft:ballgame/ball/kill_ball
scoreboard players set temp2 temp 2
scoreboard players operation temp2 temp *= ballgame.score state
execute if score ball.rounds board >= temp2 temp run return run function minecraft:ballgame/actions/football/calc_win
execute if score ball.score.a board >= ballgame.score state run return run function minecraft:ballgame/over/a
execute if score ball.score.b board >= ballgame.score state run return run function minecraft:ballgame/over/b

scoreboard players add ball.rounds board 1
tellraw @a[team=ballgame] ["\u00a76\u00a7l游戏轮数：",{score:{name:"ball.rounds",objective:board},color:aqua},"\u00a7b轮\u00a7a/",{score:{name:"temp2",objective:temp},color:aqua},"\u00a7b轮"]
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teama] run spreadplayers 783 -160 0 4 under -56 false @s
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teama] run rotate @s facing 783 -58 -173
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teamb] run spreadplayers 783 -191 0 4 under -56 false @s
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teamb] run rotate @s facing 783 -58 -173

execute positioned 783 -58 -173 run function minecraft:ballgame/ball/summon_ball

scoreboard players set ballgame.state state 2
scoreboard players set temp temp 0
execute if score ball.lastwin board matches -1 store result score temp temp run random value 1..2
execute unless score ball.lastwin board matches -1 run scoreboard players operation temp temp = ball.lastwin board

clear @a[team=ballgame,gamemode=adventure]

execute if score temp temp matches 2 run rotate @e[tag=ballgame.ball,limit=1,type=armor_stand] -180 0
execute if score temp temp matches 2 as @e[tag=ballgame.ball,limit=1,type=armor_stand] run function minecraft:ballgame/actions/football/start_ball/a
execute if score temp temp matches 1 run rotate @e[tag=ballgame.ball,limit=1,type=armor_stand] 0 0
execute if score temp temp matches 1 as @e[tag=ballgame.ball,limit=1,type=armor_stand] run function minecraft:ballgame/actions/football/start_ball/b
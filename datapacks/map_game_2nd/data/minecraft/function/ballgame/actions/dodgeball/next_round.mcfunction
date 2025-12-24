tellraw @a[team=ballgame] ["\n\u00a76\u00a7l游戏开始！\n\n\u00a7b\u00a7l躲避球：\u00a7f避免身体（除手外）碰到球！碰到球将会淘汰。\n\u00a7e温馨提示：\u00a7f请不要靠近球太近！\n\u00a7e\u00a7l请不要出界！界限为红色羊毛区域。\n"]

function minecraft:ballgame/ball/kill_ball
scoreboard players set temp2 temp 2
scoreboard players operation temp2 temp *= ballgame.score state
execute if score ball.rounds board >= temp2 temp run return run function minecraft:ballgame/actions/football/calc_win
execute if score ball.score.a board >= ballgame.score state run return run function minecraft:ballgame/over/a
execute if score ball.score.b board >= ballgame.score state run return run function minecraft:ballgame/over/b

scoreboard players add ball.rounds board 1


execute positioned 884 -58 -173 run function minecraft:ballgame/ball/summon_ball

function minecraft:ballgame/actions/dodgeball/start_ball
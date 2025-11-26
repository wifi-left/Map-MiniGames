scoreboard players set ballgame.state state 3
scoreboard players set ball.time board 6
tellraw @a[team=ballgame] ["\u00a76\u00a7l当前分数：\u00a79[A]",{score:{name:"ball.score.a",objective:board},color:yellow},"\u00a7e分 \u00a7c[B]",{score:{name:"ball.score.b",objective:board},color:yellow},"\u00a7e分"]
tellraw @a[team=ballgame] ["\u00a7a下一局将在\u00a7e5s\u00a7a后开始。"]
function minecraft:ballgame/ball/kill_ball
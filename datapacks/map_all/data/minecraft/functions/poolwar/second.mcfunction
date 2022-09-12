## Testfor
scoreboard players set play.pw tick 0 
execute as @a[team=pw.play,gamemode=adventure] run scoreboard players add play.pw tick 1
scoreboard players add play.pw state 0
execute if score play.pw tick matches ..1 if score pw.state state matches 1.. run function poolwar/gameover
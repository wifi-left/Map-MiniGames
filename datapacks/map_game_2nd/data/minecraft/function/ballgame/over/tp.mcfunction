
scoreboard players set ballgame.state state 0

execute if entity @a[team=ballgame,tag=play.total] run function small_games/total/next_game

execute as @a[team=ballgame,gamemode=!creative] run function minecraft:ballgame/join
# scoreboard players add @a[gamemode=adventure,team=pw.play,tag=play.total] score 1
scoreboard players set golf.state state 0
execute if entity @a[team=golf,tag=play.total] run function small_games/total/next_game

execute as @a[team=golf,gamemode=spectator] at @s run function minecraft:golf/join
execute as @a[team=golf,gamemode=adventure] at @s run function minecraft:golf/join

scoreboard objectives setdisplay sidebar.team.dark_red
bossbar set minecraft:golf name ["\u00a76欢迎来到高尔夫游戏 \u00a7bWELCOME TO GOLF GAME"]
bossbar set minecraft:golf players
kill @e[type=!player,tag=golf.ball]

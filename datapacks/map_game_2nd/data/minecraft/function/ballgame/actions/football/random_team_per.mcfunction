tag @a[tag=ballgame.tobeteamed,limit=1,sort=random] add ball.sell
scoreboard players add ballgame.team temp 1
execute if score ballgame.team temp matches 2 run scoreboard players set ballgame.team temp 0
execute if score ballgame.team temp matches 1 run tag @a[tag=ball.sell] add ball.teama
execute if score ballgame.team temp matches 1 run tellraw @a[tag=ball.sell] ["\n\u00a79队伍A \u00a76是你的队伍。\n"]
execute if score ballgame.team temp matches 1 run title @a[tag=ball.sell] title ["\u00a79队伍A"]

execute if score ballgame.team temp matches 0 run tag @a[tag=ball.sell] add ball.teamb
execute if score ballgame.team temp matches 0 run tellraw @a[tag=ball.sell] ["\n\u00a7c队伍B \u00a76是你的队伍。\n"]
execute if score ballgame.team temp matches 0 run title @a[tag=ball.sell] title ["\u00a7c队伍B"]

title @a[tag=ball.sell] subtitle ["\u00a76是你的队伍"]

tag @a[tag=ball.sell] remove ballgame.tobeteamed
tag @a[tag=ball.sell] remove ball.sell
execute if entity @a[tag=ballgame.tobeteamed] run function minecraft:ballgame/actions/football/random_team_per
tag @a[team=ballgame,gamemode=adventure] add ballgame.tobeteamed
scoreboard players set ballgame.team temp 0
function minecraft:ballgame/actions/football/random_team_per
tag @a remove ballgame.tobeteamed
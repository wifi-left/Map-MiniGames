##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=deskgame,gamemode=adventure] run tag @s add desk.ranteam
tag @a remove touzi.team.a
tag @a remove touzi.team.b
execute as @a[team=deskgame] run function desk/touzi/tips
execute as @a[tag=desk.ranteam] run function minecraft:desk/touzi/ran_team
function minecraft:desk/touzi/reset
tp @a[team=deskgame,gamemode=!creative] -18 8 54 0 90
tp @a[tag=touzi.team.a] -18 0 49 0 0
tp @a[tag=touzi.team.b] -18 0 59 180 0

function minecraft:desk/touzi/round/new_round

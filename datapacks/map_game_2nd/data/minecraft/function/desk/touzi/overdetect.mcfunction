##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.player.a tick 0
scoreboard players set desk.player.b tick 0

execute as @a[team=deskgame,gamemode=adventure,tag=touzi.team.a] run scoreboard players add desk.player.a tick 1
execute as @a[team=deskgame,gamemode=adventure,tag=touzi.team.b] run scoreboard players add desk.player.b tick 1

execute if score desk.state state matches 1..9 if score desk.player.a tick matches 0 if score desk.player.b tick matches 0 run function minecraft:desk/touzi/over/none
execute if score desk.state state matches 1..9 if score desk.player.a tick matches 0 run function minecraft:desk/touzi/over/b
execute if score desk.state state matches 1..9 if score desk.player.b tick matches 0 run function minecraft:desk/touzi/over/a
execute if score desk.state state matches 1..9 if score touzi.health.a board matches ..0 if score touzi.health.b board matches ..0 run function minecraft:desk/touzi/over/pj

execute if score desk.state state matches 1..9 if score touzi.health.a board matches ..0 run function minecraft:desk/touzi/over/b
execute if score desk.state state matches 1..9 if score touzi.health.b board matches ..0 run function minecraft:desk/touzi/over/a


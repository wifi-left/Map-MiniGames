##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless score desk.state state matches 4 run return fail
execute as @a[team=deskgame,gamemode=adventure] at @s run function minecraft:merchant/jump
execute if score merchant.jump.step board matches 1.. run return run function minecraft:merchant/player/auto_jump
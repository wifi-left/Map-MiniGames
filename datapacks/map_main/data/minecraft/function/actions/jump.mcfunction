##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s action.jump
execute if score desk.type board matches 3 if score desk.state state matches 2.. as @s[team=deskgame,gamemode=adventure] at @s run function merchant/jump
execute if score t_says.state state matches 1.. as @s[team=t_says,gamemode=adventure] at @s run function t_says/action/jump

execute if score mutouren.state state matches 1.. as @s[team=mutouren,gamemode=adventure] at @s run function mutouren/action/jump

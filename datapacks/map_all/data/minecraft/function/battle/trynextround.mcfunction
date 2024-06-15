##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set battle.state state 2
schedule function battle/nextround 5s
execute if score battle.score.r board matches 3.. run function battle/over/red
execute if score battle.score.b board matches 3.. run function battle/over/blue

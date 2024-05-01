##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

$scoreboard players operation wolf.$(job) board = wolf.$(job) state

$execute if score wolf.$(job) board matches 1.. run function minecraft:twolf/action/job_dg {job:$(job)}


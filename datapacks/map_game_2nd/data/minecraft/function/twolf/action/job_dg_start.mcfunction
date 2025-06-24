##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## WARNING: Macros may be not fully supported yet.
$scoreboard players operation wolf.$(job) board = wolf.$(job) state

## WARNING: Macros may be not fully supported yet.
$execute if score wolf.$(job) board matches 1.. run function minecraft:twolf/action/job_dg {job:$(job)}



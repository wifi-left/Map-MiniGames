##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## WARNING: Macros may be not fully supported yet.
$scoreboard players remove wolf.$(job) board 1

## WARNING: Macros may be not fully supported yet.
$execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/$(job)

## WARNING: Macros may be not fully supported yet.
$execute if score wolf.$(job) board matches 1.. run function minecraft:twolf/action/job_dg {job:$(job)}


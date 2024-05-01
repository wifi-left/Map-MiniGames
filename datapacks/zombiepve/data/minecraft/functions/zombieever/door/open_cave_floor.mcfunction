##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill 535 -38 -123 535 -40 -125 minecraft:air
tellraw @a[team=play.zombie] ["\n \u00a77\u00a7o一扇墙壁被破坏了...\n"]

# playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1
playsound minecraft:entity.generic.explode player @a[team=play.zombie] ~ ~ ~ 1 1 1

function zombieever/tasks/boss

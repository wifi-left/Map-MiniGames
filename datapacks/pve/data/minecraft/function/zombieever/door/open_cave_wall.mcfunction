##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill 504 -41 -117 503 -43 -117 air
tellraw @a[team=play.zombie] ["\n §7§o一扇墙壁被破坏了...\n"]

# playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1
playsound minecraft:entity.generic.explode player @a[team=play.zombie] ~ ~ ~ 1 1 1

function zombieever/talks/stronghold_boss/1


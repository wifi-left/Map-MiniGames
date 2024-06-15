##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 504 -41 -117 503 -43 -117 air
fill 527 -41 -102 527 -43 -100 minecraft:air
tellraw @a[team=play.zombie] ["\n \u00a77\u00a7o一扇门被打开了...\n"]

# playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1
playsound minecraft:entity.generic.explode player @a[team=play.zombie] ~ ~ ~ 1 1 1

scoreboard players set zombie.round board 27

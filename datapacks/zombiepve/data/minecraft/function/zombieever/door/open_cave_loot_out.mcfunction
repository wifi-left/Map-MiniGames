##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## In
# Left
fill 535 -51 -124 535 -49 -121 minecraft:air replace iron_bars
# kill @e[type=item,x=594,y=3,z=-58,distance=..10]

tellraw @a[team=play.zombie] ["\n \u00a77\u00a7o一扇大门被打开了...\n\u00a77\u00a7o同时，前往外界的道路也打开了...\n"]

# playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1
playsound minecraft:block.chest.open player @a[team=play.zombie] ~ ~ ~ 1 0.5 1

fill 579 -9 -119 578 -10 -119 minecraft:air

schedule function zombieever/rounds/lava 10s

## In
# Left
fill 369 21 -128 371 24 -128 minecraft:air
fill 371 22 -127 369 23 -127 minecraft:air
# Right
fill 331 21 -128 329 24 -128 minecraft:air
fill 329 22 -127 331 23 -127 air
# Medium
fill 353 22 -134 347 26 -134 minecraft:air replace iron_bars

tellraw @a[team=play.zombie] ["\n \u00a76\u00a7kaaa\u00a7a > \u00a7a新的地区解锁：\u00a76四合院主楼 \u00a7a< \u00a76\u00a7kaaa\n"]

playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1

tag @e[limit=5,sort=random,tag=zombie.spawn.now] remove zombie.spawn.now
tag @e[limit=8,sort=random,tag=zombie.spawn.1] add zombie.spawn.now
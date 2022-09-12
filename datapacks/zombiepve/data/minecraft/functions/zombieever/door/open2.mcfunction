# tellraw @a[team=play.zombie] ["\n \u00a76\u00a7kaaa \u00a7a新的地区解锁：四合院主楼 \u00a76\u00a7kaaa\n"]
tellraw @a[team=play.zombie] ["\n \u00a76\u00a7kaaa\u00a7a > \u00a7a新的地区解锁：\u00a7b室外 \u00a7a< \u00a76\u00a7kaaa\n\n\u00a76   现在僵尸只会在户外生成！\n"]
fill 373 22 -48 371 25 -48 minecraft:air
fill 374 22 -49 370 25 -49 minecraft:air

playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1

tag @e[tag=zombie.spawn.now] remove zombie.spawn.now
tag @e[tag=zombie.spawn.2] add zombie.spawn.now
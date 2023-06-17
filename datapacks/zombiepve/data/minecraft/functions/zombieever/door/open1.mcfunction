## In
# Left
fill 594 3 -58 594 5 -60 minecraft:air destroy
kill @e[type=item,x=594,y=3,z=-58,distance=..10]

tellraw @a[team=play.zombie] ["\n \u00a77\u00a7obong.......... 貌似什么东西炸开了？\n"]

playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1

tag @e[limit=5,sort=random,tag=zombie.spawn.now] remove zombie.spawn.now
tag @e[limit=8,sort=random,tag=zombie.spawn.1] add zombie.spawn.now
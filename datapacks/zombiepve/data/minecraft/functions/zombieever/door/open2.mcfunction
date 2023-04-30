## In
# Left
fill 584 -6 -90 584 -8 -95 air destroy
kill @e[type=item,x=584,y=-6,z=-90,distance=..10]
tellraw @a[team=play.zombie] ["\n \u00a77\u00a7obong.......... 貌似又有什么东西炸开了？\n"]

playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1

tag @e[limit=5,sort=random,tag=zombie.spawn.now] remove zombie.spawn.now
tag @e[limit=8,sort=random,tag=zombie.spawn.1] add zombie.spawn.now
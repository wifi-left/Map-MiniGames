execute as @e[tag=boat.gun.line] at @s run function boatgun:gun/main

execute in airworld as @a[x=553,y=6,z=32,distance=..1,gamemode=adventure] at @s run function boatwars/died
execute if score btw.state state matches 1 as @a[team=btw.play.a,gamemode=adventure] run function boatwars/detectboat
execute if score btw.state state matches 1 as @a[team=btw.play.b,gamemode=adventure] run function boatwars/detectboat


execute as @a[team=btw.play.a,gamemode=adventure] at @s run kill @e[type=item,distance=..5]
execute as @a[team=btw.play.b,gamemode=adventure] at @s run kill @e[type=item,distance=..5]

xp add @a[team=btw.play.a] -1 points
xp add @a[team=btw.play.b] -1 points

execute as @a[team=btw.play.a,scores={btw.gunspeed=1..}] at @s run xp add @s -1 points
execute as @a[team=btw.play.b,scores={btw.gunspeed=1..}] at @s run xp add @s -1 points

execute as @a[team=btw.play.a,scores={btw.gunspeed=3..}] at @s run xp add @s -1 points
execute as @a[team=btw.play.b,scores={btw.gunspeed=3..}] at @s run xp add @s -1 points
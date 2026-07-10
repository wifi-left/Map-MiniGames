tag @a[team=play.sheepwars.a] add sheepwars.msg
tag @a[team=play.sheepwars.b] add sheepwars.msg
tag @a[team=wait.sheepwars] add sheepwars.msg

spawnpoint @a[team=play.sheepwars.a] 411 -63 823 0 0
spawnpoint @a[team=play.sheepwars.b] 411 -63 823 0 0

execute if score sheepwars.state state matches 2 run function minecraft:sheepwars/step/wait_start
execute if score sheepwars.state state matches 3 run function minecraft:sheepwars/step/gaming

tag @a[tag=sheepwars.msg] remove sheepwars.msg

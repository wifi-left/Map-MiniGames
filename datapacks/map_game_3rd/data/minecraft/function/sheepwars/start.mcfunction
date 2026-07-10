tag @a[team=wait.sheepwars,gamemode=adventure] add sheepwars.tobeteamed
scoreboard players set sheep.randomteam temp 0
function minecraft:sheepwars/random_team
scoreboard players set sheepwars.state state 1
title @a[team=play.sheepwars.a] title ["\u00a79队伍A"]
title @a[team=play.sheepwars.a] subtitle ["这是你所在的队伍"]
tp @a[team=play.sheepwars.a] 501 -55 731 0 0
title @a[team=play.sheepwars.b] title ["\u00a7c队伍B"]
title @a[team=play.sheepwars.b] subtitle ["这是你所在的队伍"]
tp @a[team=play.sheepwars.b] 501 -55 737 180 0

scoreboard players operation sheepwars.map board = sheepwars.map state
execute if score sheepwars.map board matches -1 store result score sheepwars.map board run random value 0..1

spawnpoint @a[team=play.sheepwars.a] 411 -63 823 0 0
spawnpoint @a[team=play.sheepwars.b] 411 -63 823 0 0
effect give @a[team=play.sheepwars.a] slowness 5 25 true
effect give @a[team=play.sheepwars.b] slowness 5 25 true

function minecraft:sheepwars/reset/start

team modify play.sheepwars.a friendlyFire false
team modify play.sheepwars.b friendlyFire false
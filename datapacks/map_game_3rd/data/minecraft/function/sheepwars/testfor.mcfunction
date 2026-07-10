scoreboard players set sheepwars.player.a tick 0
scoreboard players set sheepwars.player.b tick 0
execute as @a[gamemode=survival,team=play.sheepwars.a] run scoreboard players add sheepwars.player.a tick 1
execute as @a[gamemode=adventure,team=play.sheepwars.a] run scoreboard players add sheepwars.player.a tick 1
execute as @a[gamemode=survival,team=play.sheepwars.b] run scoreboard players add sheepwars.player.b tick 1
execute as @a[gamemode=adventure,team=play.sheepwars.b] run scoreboard players add sheepwars.player.b tick 1

execute if score sheepwars.state state matches 2.. if score sheepwars.player.a tick matches ..0 if score sheepwars.player.b tick matches ..0 run function minecraft:sheepwars/over/pj
execute if score sheepwars.state state matches 2.. if score sheepwars.player.a tick matches ..0 run function minecraft:sheepwars/over/b
execute if score sheepwars.state state matches 2.. if score sheepwars.player.b tick matches ..0 run function minecraft:sheepwars/over/a
spawnpoint @a[team=play.killer] -232 -60 -308
scoreboard players set play.killer.player tick 0
scoreboard players set play.killer.killer tick 0
scoreboard players set play.killer.runner tick 0
execute as @a[team=play.killer,gamemode=adventure] run scoreboard players add play.killer.player tick 1
execute as @a[team=play.killer,tag=killer.killer,gamemode=adventure] run scoreboard players add play.killer.killer tick 1
execute as @a[team=play.killer,tag=killer.runner,gamemode=adventure] run scoreboard players add play.killer.runner tick 1

xp add @a[level=1..,team=play.killer] -1 levels
## killer.state:
# 1..2 - WAIT FOR START
# 3 - PLAYING [NORMAL]
# 4 - PLAYING [FINAL]
# 100 - GAMEOVER

execute if score killer.state state matches 2..99 if score play.killer.runner tick matches ..0 run function minecraft:killerever/over/killer
execute if score killer.state state matches 2..99 if score play.killer.killer tick matches ..0 run function minecraft:killerever/over/runner
execute if score killer.state state matches 2..99 if score play.killer.player tick matches ..1 run function minecraft:killerever/over/sthwrong

execute positioned -264 -48 -361 run function minecraft:killerever/special/cauldron_cooldown
execute positioned -238 -31 -383 run function minecraft:killerever/special/cauldron_cooldown

execute if score killer.state state matches 1 if score killer.time tick matches 1.. run function minecraft:killerever/step/wait_start
execute if score killer.state state matches 2 if score killer.time tick matches 1.. run function minecraft:killerever/step/wait_give
execute if score killer.state state matches 3 if score killer.time tick matches 1.. run function minecraft:killerever/step/wait_playing
execute if score killer.state state matches 4 if score killer.time tick matches 1.. run function minecraft:killerever/step/wait_end

scoreboard players add killer.2second tick 1
execute if score killer.2second tick matches 2 run function minecraft:killerever/2second

execute if score killer.state state matches 3..4 as @a[team=play.killer,tag=killer.saver,gamemode=adventure] unless items entity @s container.* arrow run give @s arrow[custom_data={killer:1}] 1

execute as @a[team=play.killer,gamemode=!spectator] at @s if block ~ ~-2 ~ loom run effect give @s levitation 1 15 true

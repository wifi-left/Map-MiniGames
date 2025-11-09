scoreboard players set blaze.team.a tick 0
scoreboard players set blaze.team.a.alive tick 0
scoreboard players set blaze.team.b tick 0
scoreboard players set blaze.team.b.alive tick 0
scoreboard players set blaze.total tick 0
execute as @a[team=blaze.team.a,gamemode=!creative] run scoreboard players add blaze.team.a tick 1
execute as @a[team=blaze.team.a,gamemode=adventure] run scoreboard players add blaze.team.a.alive tick 1
execute as @a[team=blaze.team.b,gamemode=!creative] run scoreboard players add blaze.team.b tick 1
execute as @a[team=blaze.team.b,gamemode=adventure] run scoreboard players add blaze.team.b.alive tick 1
scoreboard players operation blaze.total tick += blaze.team.a tick
scoreboard players operation blaze.total tick += blaze.team.b tick

execute if score blaze.state state matches 2..10 if score blaze.total tick matches ..0 run function minecraft:blaze/over/all
execute if score blaze.state state matches 2..10 if score blaze.team.a tick matches ..0 run function minecraft:blaze/over/b
execute if score blaze.state state matches 2..10 if score blaze.team.b tick matches ..0 run function minecraft:blaze/over/a

execute if score blaze.state state matches 2..10 if score blaze.mode board matches 2 if score blaze.team.b.alive tick matches ..0 run function minecraft:blaze/during/pvp/round_win/a
execute if score blaze.state state matches 2..10 if score blaze.mode board matches 2 if score blaze.team.a.alive tick matches ..0 run function minecraft:blaze/during/pvp/round_win/b

execute if score blaze.state state matches 2..10 if score blaze.mode board matches 3 if score blaze.team.b.alive tick matches ..0 run function minecraft:blaze/during/police/round_win/a
execute if score blaze.state state matches 2..10 if score blaze.mode board matches 3 if score blaze.team.a.alive tick matches ..0 run function minecraft:blaze/during/police/round_win/b
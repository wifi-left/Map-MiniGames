function minecraft:blaze/during/tag_blaze_players
execute if score blaze.state state matches 2..10 run function minecraft:blaze/point
execute if score blaze.state state matches 1..11 if score blaze.time board matches 1.. run scoreboard players remove blaze.time board 1
execute if score blaze.state state matches 1.. if score blaze.time board matches 0 run function minecraft:blaze/during/timeout
execute if score blaze.state state matches 2.. if score blaze.mode state matches 1 if score blaze.time board matches 1.. as @a[tag=blaze.player] run function minecraft:blaze/title_actionbar_normal
execute if score blaze.state state matches 2.. if score blaze.mode state matches 3 if score blaze.time board matches 1.. as @a[tag=blaze.player] run function minecraft:blaze/title_actionbar_normal
execute if score blaze.state state matches 2.. if score blaze.mode state matches 2 if score blaze.time board matches 1.. as @a[tag=blaze.player] run function minecraft:blaze/title_actionbar_pvp


execute if score blaze.state state matches 2..10 run function minecraft:blaze/during/timewarning
execute if score blaze.state state matches 1 run function minecraft:blaze/during/timewarning_waiting
execute if score blaze.state state matches 11 run function minecraft:blaze/during/timewarning_waiting_2
execute if score blaze.state state matches 2..10 run function minecraft:blaze/during/detect
spawnpoint @a[team=blaze.wait] 61 76 369 0 0
spawnpoint @a[team=blaze.team.a] 61 76 369 0 0
spawnpoint @a[team=blaze.team.b] 61 76 369 0 0

execute if score blaze.state state matches 2..10 run scoreboard players add @a[team=blaze.team.a,gamemode=adventure] blaze.coin 1
execute if score blaze.state state matches 2..10 run scoreboard players add @a[team=blaze.team.b,gamemode=adventure] blaze.coin 1

execute if score blaze.state state matches 2..10 as @a[tag=blaze.player,gamemode=adventure] at @s run function minecraft:blaze/check_stucked
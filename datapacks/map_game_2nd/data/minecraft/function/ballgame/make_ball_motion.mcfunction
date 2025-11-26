execute unless items entity @s armor.feet leather_boots run return fail
# execute store result score ball.motion0 temp run data get entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[0] 10
# execute store result score ball.motion1 temp run data get entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[1] 10
# execute store result score ball.motion2 temp run data get entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[2] 10
scoreboard players set ball.force temp 3
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:1}] run scoreboard players set ball.force temp 1
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:2}] run scoreboard players set ball.force temp 2
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:3}] run scoreboard players set ball.force temp 3
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:4}] run scoreboard players set ball.force temp 4
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:5}] run scoreboard players set ball.force temp 5
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:6}] run scoreboard players set ball.force temp 6
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:7}] run scoreboard players set ball.force temp 7
execute if items entity @s armor.feet leather_boots[custom_data~{ball.force:8}] run scoreboard players set ball.force temp 8

execute if score ball.force temp matches 1 at @s rotated ~ 0 run summon marker ^ ^ ^0.25 {Tags:["ballgame.ball.motion"]}
execute if score ball.force temp matches 2 at @s rotated ~ 0 run summon marker ^ ^ ^0.5 {Tags:["ballgame.ball.motion"]}
execute if score ball.force temp matches 3 at @s rotated ~ 0 run summon marker ^ ^ ^0.75 {Tags:["ballgame.ball.motion"]}
execute if score ball.force temp matches 4 at @s rotated ~ 0 run summon marker ^ ^ ^1 {Tags:["ballgame.ball.motion"]}
execute if score ball.force temp matches 5 at @s rotated ~ 0 run summon marker ^ ^ ^1.25 {Tags:["ballgame.ball.motion"]}
execute if score ball.force temp matches 6 at @s rotated ~ 0 run summon marker ^ ^ ^1.5 {Tags:["ballgame.ball.motion"]}
execute if score ball.force temp matches 7 at @s rotated ~ 0 run summon marker ^ ^ ^1.75 {Tags:["ballgame.ball.motion"]}
execute if score ball.force temp matches 8 at @s rotated ~ 0 run summon marker ^ ^ ^2 {Tags:["ballgame.ball.motion"]}

execute store result score ball.X temp run data get entity @e[distance=..10,tag=ballgame.ball.motion,type=marker,limit=1,sort=nearest] Pos[0] 50

execute store result score ball.Z temp run data get entity @e[distance=..10,tag=ballgame.ball.motion,type=marker,limit=1,sort=nearest] Pos[2] 50
kill @e[tag=ballgame.ball.motion,type=marker,distance=..10]
execute store result score ball.p.X temp run data get entity @s Pos[0] 50

execute store result score ball.p.Z temp run data get entity @s Pos[2] 50

scoreboard players operation ball.newM.0 temp = ball.X temp
scoreboard players operation ball.newM.0 temp -= ball.p.X temp

execute if score ball.force temp matches 1 at @s run scoreboard players set ball.newM.1 temp 2
execute if score ball.force temp matches 2 at @s run scoreboard players set ball.newM.1 temp 3
execute if score ball.force temp matches 3 at @s run scoreboard players set ball.newM.1 temp 4
execute if score ball.force temp matches 4 at @s run scoreboard players set ball.newM.1 temp 5
execute if score ball.force temp matches 5 at @s run scoreboard players set ball.newM.1 temp 6
execute if score ball.force temp matches 6 at @s run scoreboard players set ball.newM.1 temp 7
execute if score ball.force temp matches 7 at @s run scoreboard players set ball.newM.1 temp 8
execute if score ball.force temp matches 8 at @s run scoreboard players set ball.newM.1 temp 9



scoreboard players operation ball.newM.2 temp = ball.Z temp
scoreboard players operation ball.newM.2 temp -= ball.p.Z temp

execute store result entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[0] double 0.04 run scoreboard players get ball.newM.0 temp
execute store result entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[1] double 0.1 run scoreboard players get ball.newM.1 temp
execute store result entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[2] double 0.04 run scoreboard players get ball.newM.2 temp
execute at @s run playsound entity.wind_charge.wind_burst player @s ~ ~ ~ 1 1 1 
execute as @s[tag=ball.teama] run data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] data.lasttouched set value "teama"
execute as @s[tag=ball.teamb] run data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] data.lasttouched set value "teamb"
execute unless entity @s[tag=ball.teama] unless entity @s[tag=ball.teamb] run data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] data.lasttouched set value "unknown"

execute if score ballgame.state state matches 2 run function minecraft:ballgame/actions/football/have_started_ball
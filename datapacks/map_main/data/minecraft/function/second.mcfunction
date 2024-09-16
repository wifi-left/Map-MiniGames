##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tick tick 0

scoreboard players add tick2 tick 1
execute if score tick2 tick matches 4.. run function minecraft:tsecond
scoreboard players add tick3 tick 1
execute if score tick3 tick matches 10.. run function minecraft:ttsecond
effect give @a[team=play.color] resistance 1 25 true
effect give @a[team=wait.color] resistance 1 25 true

function minecraft:snow/second

execute store result bossbar minecraft:live value run scoreboard players get live.time live.all
execute if score live.state state matches 1..1 run scoreboard players add live.time live.all 1

execute if score park.state state matches 1.. run function minecraft:parkourrace/testfor
execute if score pw.state state matches 1.. run function minecraft:poolwar/second
execute if score car.state state matches 1.. run function minecraft:car_race/second

execute as @e[tag=block_entity] run data merge entity @s {Time:100}

execute as @e[type=minecart,tag=lobby.car] at @s if block ~ ~ ~ lava run kill @s


## Car
# execute as @e[tag=lobby.car.start] at @s unless entity @e[tag=lobby.car,type=!player,distance=0..1] run function lobby/spawncar
# execute as @e[tag=lobby.car.end] at @s run kill @e[tag=lobby.car,type=!player,distance=0..3]
xp add @a[team=play.live.runner,level=1..] -1 levels
xp add @a[team=play.live.killer,level=1..] -1 levels
effect give @a[team=wait.sur] resistance 2 25 true
execute if score golf.state state matches 1.. in golfworld run function golf/second
execute if score boat.state state matches 1.. in boatworld2 run function boat/second
execute if score sur.state state matches 1.. in airworld run function surgame:second
effect give @a[team=boat] resistance 3 25 true


execute as @e[type=area_effect_cloud,tag=lobby] at @s run data merge entity @s {Duration:2147483647,Age:0}

function foodparty:second

function dev/second
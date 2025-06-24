##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tp @s[team=btw.play.a] 628 14 -40 45 0
# tp @s[team=btw.play.b] 554 14 28 -135 0
execute as @s[team=btw.play.a] if score @s btw.boattype matches 0 run summon bamboo_raft 628 14 -40 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.a] if score @s btw.boattype matches 1 run summon birch_boat 628 14 -40 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.a] if score @s btw.boattype matches 2 run summon acacia_boat 628 14 -40 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.a] if score @s btw.boattype matches 3 run summon dark_oak_boat 628 14 -40 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.a] if score @s btw.boattype matches 4 run summon cherry_boat 628 14 -40 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.a] if score @s btw.boattype matches 5 run summon mangrove_boat 628 14 -40 {Tags:["boat.new","btw.boat"],Invulnerable:1b}

execute as @s[team=btw.play.b] if score @s btw.boattype matches 0 run summon bamboo_raft 554 14 28 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.b] if score @s btw.boattype matches 1 run summon birch_boat 554 14 28 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.b] if score @s btw.boattype matches 2 run summon acacia_boat 554 14 28 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.b] if score @s btw.boattype matches 3 run summon dark_oak_boat 554 14 28 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.b] if score @s btw.boattype matches 4 run summon cherry_boat 554 14 28 {Tags:["boat.new","btw.boat"],Invulnerable:1b}
execute as @s[team=btw.play.b] if score @s btw.boattype matches 5 run summon mangrove_boat 554 14 28 {Tags:["boat.new","btw.boat"],Invulnerable:1b}

execute as @s[team=btw.play.a] run tp @s 628 14 -40 45 0
# execute as @s[team=btw.play.a] run tp @e[tag=boat.new] 628 14 -40 45 0
execute as @s[team=btw.play.b] run tp @s 554 14 28 -135 0
# execute as @s[team=btw.play.b] run tp @e[tag=boat.new] 554 14 28 -135 0
scoreboard players operation @e[tag=boat.new] park.uuid = @s park.uuid

execute if score @s btw.boattype matches 0 run scoreboard players set @e[tag=boat.new] btw.score 10
execute if score @s btw.boattype matches 1 run scoreboard players set @e[tag=boat.new] btw.score 15
execute if score @s btw.boattype matches 2 run scoreboard players set @e[tag=boat.new] btw.score 20
execute if score @s btw.boattype matches 3 run scoreboard players set @e[tag=boat.new] btw.score 25
execute if score @s btw.boattype matches 4 run scoreboard players set @e[tag=boat.new] btw.score 30
execute if score @s btw.boattype matches 5 run scoreboard players set @e[tag=boat.new] btw.score 35

ride @s mount @e[tag=boat.new,limit=1]

tag @e[tag=boat.new] remove boat.new

title @s title ["\u00a7a游戏开始！"]
title @s subtitle ["\u00a7f游戏开始！"]
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1


title @a[tag=bw.player] title ["\u00a7aBedwars"]
title @a[tag=bw.player] subtitle ["\u00a7fEnjoy the game!"]
execute as @e[tag=diamond,type=marker] at @s run summon minecraft:area_effect_cloud ~ ~1.8 ~ {Age:-2147483648,Duration:-1,WaitTime: -2147483648,Tags:["bedwars","diamond.title"],CustomName:'"\\u00a7b\\u00a7l钻石"',CustomNameVisible:1b}
execute as @e[tag=diamond,type=marker] at @s run summon minecraft:area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime: -2147483648,Tags:["bedwars","diamond.subtitle"],CustomName:'"To be edited"',CustomNameVisible:1b}
execute as @e[tag=emerald,type=marker] at @s run summon minecraft:area_effect_cloud ~ ~1.8 ~ {Age:-2147483648,Duration:-1,WaitTime: -2147483648,Tags:["bedwars","emerald.title"],CustomName:'"\\u00a72绿宝石"',CustomNameVisible:1b}
execute as @e[tag=emerald,type=marker] at @s run summon minecraft:area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime: -2147483648,Tags:["bedwars","emerald.subtitle"],CustomName:'"To be edited"',CustomNameVisible:1b}

tellraw @a[tag=bw.player] ["\u00a7a重置完毕！"]
scoreboard players set bw.reset board 0
execute in bedwars_backup run forceload remove -573 299 -397 121
execute in bedwars_backup run forceload remove -753 121 -577 299
schedule clear bedwars/resets/mogu
schedule clear bedwars/resets/unnamed
team join bw.wait @a[tag=GOABLE.SPEC,team=bw.green]
team join bw.wait @a[tag=GOABLE.SPEC,team=bw.blue]
team join bw.wait @a[tag=GOABLE.SPEC,team=bw.red]
team join bw.wait @a[tag=GOABLE.SPEC,team=bw.yellow]
gamemode spectator @a[tag=GOABLE.SPEC,team=bw.wait]
tag @a[team=bw.wait,tag=!GOABLE.SPEC] add bw.play
title @a[tag=bw.player] reset
title @a[tag=bw.player] title ["\u00a7eBedwars"]
title @a[tag=bw.player] subtitle ["\u00a7a游戏开始！"]
execute if score bw.mode state matches 0..3 run execute as @a[team=bw.wait,tag=!GOABLE.SPEC] at @s run function minecraft:bedwars/before/random_team
execute if score bw.mode state matches 4..7 run execute as @a[team=bw.wait,tag=!GOABLE.SPEC] at @s run function minecraft:bedwars/before/random_team_2teams
tag @a[team=bw.wait] remove bw.play
tellraw @a ["\u00a7a\u00a7l[MESSAGE] \u00a76起床战争\u00a7b游戏已经开始！"]
tellraw @a[team=bw.blue] ["\u00a76你加入了\u00a79蓝队"]
tellraw @a[team=bw.green] ["\u00a76你加入了\u00a7a绿队"]
tellraw @a[team=bw.red] ["\u00a76你加入了\u00a7c红队"]
tellraw @a[team=bw.yellow] ["\u00a76你加入了\u00a7e黄队"]
tellraw @a[team=bw.wait] ["\u00a77你现在处于旁观模式。"]
gamemode adventure @a[team=bw.yellow]
gamemode adventure @a[team=bw.blue]
gamemode adventure @a[team=bw.green]
gamemode adventure @a[team=bw.red]
# execute as @a run function minecraft:bedwars/before/teleport
execute as @a[tag=bw.play] run function bedwars/during/player/onlytpspawn

scoreboard players operation @a[tag=bw.play] globle.game = bw globle.game

scoreboard players set bd.blue state 1
scoreboard players set bd.green state 1
scoreboard players set bd.yellow state 1
scoreboard players set bd.red state 1
scoreboard players set bw.blue state 1
scoreboard players set bw.green state 1
scoreboard players set bw.yellow state 1
scoreboard players set bw.red state 1

data merge block -302 30 131 {Items: []}
data merge block -226 30 211 {Items: []}
data merge block -306 30 287 {Items: []}
data merge block -382 30 207 {Items: []}

function bedwars/resets/placebed

execute if score bw.mode state matches 1 as @e[tag=bw.bed.beds] at @s run setblock -371 31 210 air
execute if score bw.mode state matches 5 as @e[tag=bw.bed.beds] at @s run setblock -371 31 210 air

execute if score bw.mode state matches 1 run tellraw @a[tag=bw.player] ["\n   \u00a7c\u00a7l无床模式\u00a76已启用。\n"]
execute if score bw.mode state matches 5 run tellraw @a[tag=bw.player] ["\n   \u00a7c\u00a7l无床模式\u00a76已启用。\n"]
execute if score bw.mode state matches 2 run tellraw @a[tag=bw.player] ["\n   \u00a7a\u00a7l全解锁模式\u00a76已启用。\n"]
execute if score bw.mode state matches 6 run tellraw @a[tag=bw.player] ["\n   \u00a7a\u00a7l全解锁模式\u00a76已启用。\n"]

execute if score bw.mode state matches 2 run tag @a[tag=bw.player] add bw.attack
execute if score bw.mode state matches 2 run tag @a[tag=bw.player] add bw.armor
execute if score bw.mode state matches 2 run tag @a[tag=bw.player] add bw.speed
execute if score bw.mode state matches 2 run tag @a[tag=bw.player] add bw.fastii

execute if score bw.mode state matches 6 run tag @a[tag=bw.player] add bw.attack
execute if score bw.mode state matches 6 run tag @a[tag=bw.player] add bw.armor
execute if score bw.mode state matches 6 run tag @a[tag=bw.player] add bw.speed
execute if score bw.mode state matches 6 run tag @a[tag=bw.player] add bw.fastii

scoreboard players set bw.state state 1

scoreboard players set bw.event state 0
scoreboard players set bw.event.countdown board 720
# bw.event
# 0: Diamond Up 
# 1: Emerlad Up
# 2: Bed Gone
# 3: Dragon
bossbar set minigames:bedwars max 720
# execute store result bossbar minigames:bedwars value run scoreboard players get bw.reset board
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7b钻石\u00a7e速度升级: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick

scoreboard players set bw.set.em board 72
scoreboard players set bw.set.dm board 48

kill @e[type=item]
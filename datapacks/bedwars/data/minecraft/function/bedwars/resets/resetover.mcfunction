##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[tag=bw.player] title ["\u00a7aBedwars"]
title @a[tag=bw.player] subtitle ["\u00a7fEnjoy the game!"]
execute as @e[tag=diamond,type=marker] at @s run summon minecraft:text_display ~ ~2.8 ~ {Tags:["bedwars","diamond.title"],text:"\u00a7b\u00a7l钻石生成点",CustomNameVisible:0b,billboard:"vertical",see_through:false,view_range:0.4f}
execute as @e[tag=diamond,type=marker] at @s run summon minecraft:text_display ~ ~2.5 ~ {Tags:["bedwars","diamond.subtitle"],text:"To be edited",CustomNameVisible:0b,billboard:"vertical",see_through:false,view_range:0.4f}
execute as @e[tag=emerald,type=marker] at @s run summon minecraft:text_display ~ ~2.8 ~ {Tags:["bedwars","emerald.title"],text:"\u00a72\u00a7l绿宝石生成点",CustomNameVisible:0b,billboard:"vertical",see_through:false,view_range:0.4f}
execute as @e[tag=emerald,type=marker] at @s run summon minecraft:text_display ~ ~2.5 ~ {Tags:["bedwars","emerald.subtitle"],text:"To be edited",CustomNameVisible:0b,billboard:"vertical",see_through:false,view_range:0.4f}
execute as @e[tag=diamond,type=marker] at @s run summon minecraft:armor_stand ~ ~2.5 ~ {Tags:["bedwars","diamond.icon","bedwars.icon"],CustomNameVisible:0b,NoBasePlate:true,NoGravity:true,Invisible:true,Invulnerable:true,equipment:{head:{id:"diamond_block"}},DisabledSlots:4144896,Small:true}
execute as @e[tag=emerald,type=marker] at @s run summon minecraft:armor_stand ~ ~2.5 ~ {Tags:["bedwars","emerald.icon","bedwars.icon"],CustomNameVisible:0b,NoBasePlate:true,NoGravity:true,Invisible:true,Invulnerable:true,equipment:{head:{id:"emerald_block"}},DisabledSlots:4144896,Small:true}

tellraw @a[tag=bw.player] ["§a重置完毕！"]
scoreboard players set bw.reset board 0
execute in airworld run forceload remove -573 299 -397 121
execute in airworld run forceload remove -753 121 -577 299
schedule clear bedwars/resets/mogu
schedule clear bedwars/resets/unnamed
# schedule clear bedwars/resets
# schedule clear bedwars/resets/unnamed
team join bw.wait @a[tag=GLOBAL.SPEC,team=bw.green]
team join bw.wait @a[tag=GLOBAL.SPEC,team=bw.blue]
team join bw.wait @a[tag=GLOBAL.SPEC,team=bw.red]
team join bw.wait @a[tag=GLOBAL.SPEC,team=bw.yellow]
gamemode spectator @a[tag=GLOBAL.SPEC,team=bw.wait]
tag @a[team=bw.wait,tag=!GLOBAL.SPEC] add bw.play
title @a[tag=bw.player] reset
title @a[tag=bw.player] title ["\u00a7eBedwars"]
title @a[tag=bw.player] subtitle ["\u00a7a游戏开始！"]

execute if score bw.custom_team board matches 0 run function bedwars/before/selected_team

# 组队优先的分队：每队人数上限按“开始分配前的总人数”算一次
# （不能放到随后的逐人分配里按剩余人数算，否则上限会一路缩水，组队明明放得下也会被拆开）
scoreboard players set team.total board 0
execute as @a[team=bw.wait,tag=!GLOBAL.SPEC] run scoreboard players add team.total board 1
scoreboard players set team.num board 4
execute if score bw.teamcount state matches 2 run scoreboard players set team.num board 2
scoreboard players set team.cap board 1
execute if score team.total board matches 1.. run scoreboard players operation team.cap board = team.total board
execute if score team.total board matches 1.. run scoreboard players operation team.cap board /= team.num board
execute if score team.total board matches 1.. run scoreboard players operation team.rem board = team.total board
execute if score team.total board matches 1.. run scoreboard players operation team.rem board %= team.num board
execute if score team.rem board matches 1.. run scoreboard players add team.cap board 1

execute unless score bw.teamcount state matches 2 run execute as @a[team=bw.wait,tag=!GLOBAL.SPEC] at @s run function minecraft:bedwars/before/random_team
execute if score bw.teamcount state matches 2 run execute as @a[team=bw.wait,tag=!GLOBAL.SPEC] at @s run function minecraft:bedwars/before/random_team_2teams
scoreboard players reset * bw.team
tag @a[team=bw.wait] remove bw.play
tellraw @a ["§a§l[MESSAGE] §6起床战争§b游戏已经开始！"]
tellraw @a[team=bw.blue] ["§6你加入了§9蓝队"]
tellraw @a[team=bw.green] ["§6你加入了§a绿队"]
tellraw @a[team=bw.red] ["§6你加入了§c红队"]
tellraw @a[team=bw.yellow] ["§6你加入了§e黄队"]
tellraw @a[team=bw.wait] ["§7你现在处于旁观模式。"]
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


data merge block -302 30 131 {Items:[]}

data merge block -226 30 211 {Items:[]}

data merge block -306 30 287 {Items:[]}

data merge block -382 30 207 {Items:[]}

function bedwars/resets/placebed

execute if score bw.mode state matches 1 as @e[tag=bw.bed.beds] at @s run setblock ~ ~ ~ air

execute if score bw.mode state matches 1 run tellraw @a[tag=bw.player] ["\n   §c§l无床模式§6已启用。\n"]
execute if score bw.mode state matches 2 run tellraw @a[tag=bw.player] ["\n   §a§l全解锁模式§6已启用。\n"]

execute if score bw.mode state matches 3 run tellraw @a[tag=bw.player] ["\n   §d§l经验模式§6已启用。\n"]
execute if score bw.mode state matches 4 run tellraw @a[tag=bw.player] ["\n   §6§l双倍资源§6已启用（生成器速度翻倍，开局每人 10 铁）。\n"]
execute if score bw.mode state matches 5 run tellraw @a[tag=bw.player] ["\n   §a§l职业模式§6已启用（用快捷栏里的「职业栏」右键切换职业）。\n"]
execute if score bw.mode state matches 6 run tellraw @a[tag=bw.player] ["\n   §4§l僵尸潮§6已启用（每 2 分钟各队基地刷一波僵尸）。\n"]
execute if score bw.mode state matches 7 run tellraw @a[tag=bw.player] ["\n   §5§l永久床§6已启用（床无法破坏，重生次数用尽即淘汰）。\n"]

execute if score bw.mode state matches 0 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §d普通"]
execute if score bw.mode state matches 0 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §d普通"]
execute if score bw.mode state matches 1 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §c无床"]
execute if score bw.mode state matches 1 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §c无床"]
execute if score bw.mode state matches 2 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §e全解锁"]
execute if score bw.mode state matches 2 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §e全解锁"]
execute if score bw.mode state matches 3 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §d经验模式"]
execute if score bw.mode state matches 3 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §d经验模式"]
execute if score bw.mode state matches 4 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §6双倍资源"]
execute if score bw.mode state matches 4 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §6双倍资源"]
execute if score bw.mode state matches 5 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §a职业模式"]
execute if score bw.mode state matches 5 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §a职业模式"]
execute if score bw.mode state matches 6 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §4僵尸潮"]
execute if score bw.mode state matches 6 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §4僵尸潮"]
execute if score bw.mode state matches 7 if score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§a两队§r · §5永久床"]
execute if score bw.mode state matches 7 unless score bw.teamcount state matches 2 run scoreboard players display name bw.info1 bw.info ["游戏模式：§b四队§r · §5永久床"]


execute if score bw.mode state matches 2 run function minecraft:bedwars/resets/unlock_all_buffs

scoreboard players set bw.state state 1

# 事件时间表（总 31:00，细节见 events/during/tick.mcfunction 顶部注释）：
# 钻石升级I 6:00 → 绿宝石I 3:00 → 钻石II 3:00 → 绿宝石II 3:00 → 钻石III 3:00 → 绿宝石III 3:00 → 床破坏 5:00 → 最终对决 5:00 → 平局
scoreboard players set bw.event state 0
scoreboard players set bw.event.countdown board 360
bossbar set minigames:bedwars max 360
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7b钻石\u00a7e速度升级 I: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]
scoreboard players display name bw.event bw.info ["即将：\u00a7b钻石升级 I\u00a7r"]

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick

# 地图级生成器的基础速度（后面的升级事件会在此基础上加快）
scoreboard players set bw.set.em board 1200
scoreboard players set bw.set.dm board 960

# 双倍资源（mode 4）：所有生成器间隔减半（含每队的铁/金）
scoreboard players set bw.half board 2
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.em board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.dm board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.ir.green board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.ir.red board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.ir.blue board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.ir.yellow board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.gd.green board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.gd.red board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.gd.blue board /= bw.half board
execute if score bw.mode state matches 4 run scoreboard players operation bw.set.gd.yellow board /= bw.half board

# 僵尸潮（mode 6）：首次 2 分钟后开刷
execute if score bw.mode state matches 6 run scoreboard players set bw.zombie.t board 120

# 永久床（mode 7）：每队重生次数（4 队 6 次 / 2 队 10 次）
execute if score bw.mode state matches 7 run scoreboard players set bw.lives.green board 6
execute if score bw.mode state matches 7 run scoreboard players set bw.lives.red board 6
execute if score bw.mode state matches 7 run scoreboard players set bw.lives.blue board 6
execute if score bw.mode state matches 7 run scoreboard players set bw.lives.yellow board 6
execute if score bw.mode state matches 7 if score bw.teamcount state matches 2 run scoreboard players set bw.lives.green board 10
execute if score bw.mode state matches 7 if score bw.teamcount state matches 2 run scoreboard players set bw.lives.red board 10
execute if score bw.mode state matches 7 if score bw.teamcount state matches 2 run scoreboard players set bw.lives.blue board 10
execute if score bw.mode state matches 7 if score bw.teamcount state matches 2 run scoreboard players set bw.lives.yellow board 10

# 铁/金生成器按「离哪支队伍的基地（床）最近」打上队伍标签（只有铁和金分团队）
function minecraft:bedwars/resets/gen_team_tag

kill @e[type=item]

# 双倍资源：开局每人 10 铁
execute if score bw.mode state matches 4 run give @a[tag=bw.play] iron_ingot 10

# 职业模式：给每个玩家发「职业栏」（右键循环切换，重生后补发对应套装）
execute if score bw.mode state matches 5 run function minecraft:bedwars/resets/classmode_start

xp set @a[tag=bw.player] 0 levels
xp set @a[tag=bw.player] 0 points
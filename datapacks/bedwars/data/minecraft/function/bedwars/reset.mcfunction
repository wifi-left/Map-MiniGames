##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[tag=bw.player] ["§e重置中..."]
title @a[tag=bw.player] title ["\u00a7eReseting..."]
title @a[tag=bw.player] subtitle ["\u00a7fIt may take some time..."]
gamemode spectator @a[tag=bw.player,gamemode=!creative]

# kill @e[tag=bw.bed.red]
# kill @e[tag=bw.bed.blue]
# kill @e[tag=bw.bed.yellow]
# kill @e[tag=bw.bed.green]
kill @e[tag=bw.bed.beds]
kill @e[tag=iron,type=marker]
kill @e[tag=gold,type=marker]
kill @e[tag=diamond,type=marker]
kill @e[tag=emerald,type=marker]
kill @e[tag=emerald.title]
kill @e[tag=diamond.title]
kill @e[tag=emerald.subtitle]
kill @e[tag=diamond.subtitle]
kill @e[tag=bedwars.icon]

kill @e[tag=dmshop]
kill @e[tag=shop]
kill @e[tag=shop2]

bossbar set minigames:bedwars name ["\u00a7e\u00a7lBEDWARS 起床战争 \u00a77| \u00a7a重置中..."]
bossbar set minigames:bedwars value 1
bossbar set minigames:bedwars max 1
bossbar set minigames:bedwars players
bossbar set minigames:bedwars players @a[team=bw.wait]
bossbar set minigames:bedwars visible true

# -216 -31 299 -392 -1 121
forceload add -216 300 -393 121

scoreboard players reset @e[type=sheep,tag=bw.tntsheep]
kill @e[type=sheep,tag=bw.tntsheep]
kill @e[type=marker,tag=tntsheep.spawn]

scoreboard players set bw.state state -1
schedule clear bedwars/resets/mogu
schedule clear bedwars/resets/unnamed
schedule clear bedwars/resets/space
schedule clear bedwars/resets/special1
schedule clear bedwars/resets/glassworld
schedule clear bedwars/resets/shenjing
scoreboard players set bw.reset board -11
title @a[tag=bw.player] times 0 200 0
gamemode spectator @a[tag=bw.player,gamemode=adventure]
execute if score bw.mode board matches ..0 store result score bw.mode board run random value 1..7

function minecraft:bedwars/check_loaded_and_start_reset

scoreboard objectives modify bw.info displayname ["\u00a7e\u00a7l起床战争"]
scoreboard players reset * bw.info
scoreboard players set bw.date bw.info 14
scoreboard players set bw.air1 bw.info 13
scoreboard players set bw.event bw.info 12
scoreboard players set bw.air2 bw.info 11
scoreboard players set bw.red bw.info 10
scoreboard players set bw.blue bw.info 9
scoreboard players set bw.green bw.info 8
scoreboard players set bw.yellow bw.info 7
scoreboard players set bw.air3 bw.info 6
scoreboard players set bw.info1 bw.info 5
scoreboard players set bw.info2 bw.info 4
scoreboard players set bw.info3 bw.info 3
scoreboard players set bw.air4 bw.info 2
scoreboard players set bw.BottomTitle bw.info 1

scoreboard players display name bw.date bw.info ["\u00a7705/30/26§8 \u00a78m001A"]

scoreboard players display name bw.red bw.info "§c红§8 §r红队: §a§l✓"
scoreboard players display name bw.blue bw.info "§9蓝§8 §r蓝队: §a§l✓"
scoreboard players display name bw.green bw.info "§a绿§8 §r绿队: §a§l✓"
scoreboard players display name bw.yellow bw.info "§e黄§8 §r黄队: §a§l✓"

scoreboard players display name bw.event bw.info ["没有任何事情"]

scoreboard players display name bw.air1 bw.info [""]
scoreboard players display name bw.air2 bw.info [""]
scoreboard players display name bw.air3 bw.info [""]
scoreboard players display name bw.air4 bw.info [""]

scoreboard players display name bw.info1 bw.info ["没有任何信息：\u00a7a0"]
scoreboard players display name bw.info2 bw.info ["没有任何信息：\u00a7a0"]
scoreboard players display name bw.info3 bw.info ["没有任何信息：\u00a7a0"]

## 请勿修改版权信息：
scoreboard players display name bw.BottomTitle bw.info ["\u00a7eBedwars@MiniGame"]

scoreboard players reset * bw.axe
scoreboard players reset * bw.pickaxe
scoreboard players reset * bw.armor
scoreboard players add @a bw.armor 0
scoreboard players add @a bw.axe 0
scoreboard players add @a bw.pickaxe 0

tag @a remove bw.shears
tag @a remove bw.speed
tag @a remove bw.jump
tag @a remove bw.attack
tag @a remove bw.armor
tag @a remove bw.fasti
tag @a remove bw.fastii
scoreboard players set bw.em board 0
scoreboard players set bw.dm board 0
scoreboard players set bw.gd board 0
scoreboard players set bw.ir board 0

# 加成
scoreboard players set bw.armor.green board 0
scoreboard players set bw.armor.red board 0
scoreboard players set bw.armor.blue board 0
scoreboard players set bw.armor.yellow board 0

scoreboard players set bw.sharpness.green board 0
scoreboard players set bw.sharpness.red board 0
scoreboard players set bw.sharpness.blue board 0
scoreboard players set bw.sharpness.yellow board 0

scoreboard players set bw.haste.green board 0
scoreboard players set bw.haste.red board 0
scoreboard players set bw.haste.blue board 0
scoreboard players set bw.haste.yellow board 0

execute as @a[team=bw.wait] run function player:empty_enderchest
execute as @a[team=bw.red] run function player:empty_enderchest
execute as @a[team=bw.blue] run function player:empty_enderchest
execute as @a[team=bw.yellow] run function player:empty_enderchest
execute as @a[team=bw.green] run function player:empty_enderchest

tag @a remove bw.triggeredtrap

kill @e[type=arrow]
kill @e[type=fireball]
kill @e[type=egg]
kill @e[type=creeper]
kill @e[type=item]

scoreboard players set bw.red.trap.1 board -1
scoreboard players set bw.red.trap.2 board -1
scoreboard players set bw.red.trap.3 board -1
scoreboard players set bw.blue.trap.1 board -1
scoreboard players set bw.blue.trap.2 board -1
scoreboard players set bw.blue.trap.3 board -1
scoreboard players set bw.green.trap.1 board -1
scoreboard players set bw.green.trap.2 board -1
scoreboard players set bw.green.trap.3 board -1
scoreboard players set bw.yellow.trap.1 board -1
scoreboard players set bw.yellow.trap.2 board -1
scoreboard players set bw.yellow.trap.3 board -1
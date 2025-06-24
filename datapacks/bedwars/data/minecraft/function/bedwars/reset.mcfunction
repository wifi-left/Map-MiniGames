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
kill @e[tag=dmshop]
kill @e[tag=shop]
kill @e[tag=shop2]

bossbar set minigames:bedwars name ["\u00a7e\u00a7lBEDWARS 起床战争 \u00a77| \u00a7a重置中..."]
bossbar set minigames:bedwars value 1
bossbar set minigames:bedwars max 1
bossbar set minigames:bedwars players
bossbar set minigames:bedwars players @a[team=bw.wait]
bossbar set minigames:bedwars visible true


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


execute if score bw.mode board matches 1 run function bedwars/resets/mogu
execute if score bw.mode board matches 2 run function bedwars/resets/unnamed
execute if score bw.mode board matches 3 run function bedwars/resets/space
execute if score bw.mode board matches 4 run function bedwars/resets/special1
execute if score bw.mode board matches 5 run function bedwars/resets/glassworld
execute if score bw.mode board matches 6 run function bedwars/resets/siheyuan
execute if score bw.mode board matches 7.. run function bedwars/resets/shenjing
scoreboard objectives modify bw.info displayname ["\u00a7e\u00a7l起床战争"]
scoreboard players reset * bw.info
scoreboard players set date bw.info 14
scoreboard players set air1 bw.info 13
scoreboard players set event bw.info 12
scoreboard players set air2 bw.info 11
scoreboard players set red bw.info 10
scoreboard players set blue bw.info 9
scoreboard players set green bw.info 8
scoreboard players set yellow bw.info 7
scoreboard players set air3 bw.info 6
scoreboard players set info1 bw.info 5
scoreboard players set info2 bw.info 4
scoreboard players set info3 bw.info 3
scoreboard players set air4 bw.info 2
scoreboard players set BottomTitle bw.info 1

scoreboard players display name date bw.info ["\u00a7701/19/24§8 \u00a78m001A"]

scoreboard players display name red bw.info "§c红§8 §r红队: §a§l✓"
scoreboard players display name blue bw.info "§9蓝§8 §r蓝队: §a§l✓"
scoreboard players display name green bw.info "§a绿§8 §r绿队: §a§l✓"
scoreboard players display name yellow bw.info "§e黄§8 §r黄队: §a§l✓"

scoreboard players display name event bw.info ["没有任何事情"]

scoreboard players display name air1 bw.info [""]
scoreboard players display name air2 bw.info [""]
scoreboard players display name air3 bw.info [""]
scoreboard players display name air4 bw.info [""]

scoreboard players display name info1 bw.info ["没有任何信息：\u00a7a0"]
scoreboard players display name info2 bw.info ["没有任何信息：\u00a7a0"]
scoreboard players display name info3 bw.info ["没有任何信息：\u00a7a0"]

scoreboard players display name BottomTitle bw.info ["\u00a7eBedwars@MiniGame"]

# scoreboard players set §707/28/21§8　§8m001A bw.info 14
# scoreboard players set §a bw.info 13
# scoreboard players set §r没有任何事情 bw.info 12
# scoreboard players set §b bw.info 11
# scoreboard players set §c红§8　§r红队:§a§l✓ bw.info 10
# scoreboard players set §9蓝§8　§r蓝队:§a§l✓ bw.info 9
# scoreboard players set §a绿§8　§r绿队:§a§l✓ bw.info 8
# scoreboard players set §e黄§8　§r黄队:§a§l✓ bw.info 7
# scoreboard players set §c bw.info 6
# scoreboard players set §r没有任何信息：§a0§c bw.info 5
# scoreboard players set §r没有任何信息：§a0§b bw.info 4
# scoreboard players set §r没有任何信息：§a0 bw.info 3
# scoreboard players set §d bw.info 2
# scoreboard players set §eBedwars@MiniGame bw.info 1

scoreboard players reset * bw.axe
scoreboard players reset * bw.pickaxe
scoreboard players reset * bw.armor
scoreboard players add @a bw.armor 0
scoreboard players add @a bw.axe 0
scoreboard players add @a bw.pickaxe 0

tag @a remove bw.shears
tag @a remove bw.speed
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

item replace entity @a enderchest.0 with air
item replace entity @a enderchest.1 with air
item replace entity @a enderchest.2 with air
item replace entity @a enderchest.3 with air
item replace entity @a enderchest.4 with air
item replace entity @a enderchest.5 with air
item replace entity @a enderchest.6 with air
item replace entity @a enderchest.7 with air
item replace entity @a enderchest.8 with air
item replace entity @a enderchest.9 with air
item replace entity @a enderchest.10 with air
item replace entity @a enderchest.11 with air
item replace entity @a enderchest.12 with air
item replace entity @a enderchest.13 with air
item replace entity @a enderchest.14 with air
item replace entity @a enderchest.15 with air
item replace entity @a enderchest.16 with air
item replace entity @a enderchest.17 with air
item replace entity @a enderchest.18 with air
item replace entity @a enderchest.19 with air
item replace entity @a enderchest.20 with air
item replace entity @a enderchest.21 with air
item replace entity @a enderchest.22 with air
item replace entity @a enderchest.23 with air
item replace entity @a enderchest.24 with air
item replace entity @a enderchest.25 with air
item replace entity @a enderchest.26 with air

kill @e[type=arrow]
kill @e[type=fireball]
kill @e[type=egg]
kill @e[type=creeper]
kill @e[type=item]


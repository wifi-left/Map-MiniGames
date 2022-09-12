tellraw @a[tag=bw.player] ["\u00a7e重置中..."]
title @a[tag=bw.player] title ["\u00a7eReseting..."]
title @a[tag=bw.player] subtitle ["\u00a7fIt may take some time..."]
gamemode spectator @a[tag=bw.player,gamemode=!creative]
# fill -215 0 120 -393 0 300 air replace #minecraft:bedblocks
# fill -215 1 120 -393 1 300 air replace #minecraft:bedblocks
# fill -215 2 120 -393 2 300 air replace #minecraft:bedblocks
# fill -215 3 120 -393 3 300 air replace #minecraft:bedblocks
# fill -215 4 120 -393 4 300 air replace #minecraft:bedblocks
# fill -215 5 120 -393 5 300 air replace #minecraft:bedblocks
# fill -215 6 120 -393 6 300 air replace #minecraft:bedblocks
# fill -215 7 120 -393 7 300 air replace #minecraft:bedblocks
# fill -215 8 120 -393 8 300 air replace #minecraft:bedblocks
# fill -215 9 120 -393 9 300 air replace #minecraft:bedblocks
# fill -215 10 120 -393 10 300 air replace #minecraft:bedblocks
# #
# fill -215 11 120 -393 11 300 air replace #minecraft:bedblocks
# fill -215 12 120 -393 12 300 air replace #minecraft:bedblocks
# fill -215 13 120 -393 13 300 air replace #minecraft:bedblocks
# fill -215 14 120 -393 14 300 air replace #minecraft:bedblocks
# fill -215 15 120 -393 15 300 air replace #minecraft:bedblocks
# fill -215 16 120 -393 16 300 air replace #minecraft:bedblocks
# fill -215 17 120 -393 17 300 air replace #minecraft:bedblocks
# fill -215 18 120 -393 18 300 air replace #minecraft:bedblocks
# fill -215 19 120 -393 19 300 air replace #minecraft:bedblocks
# fill -215 20 120 -393 20 300 air replace #minecraft:bedblocks
# fill -215 21 120 -393 21 300 air replace #minecraft:bedblocks
# fill -215 22 120 -393 22 300 air replace #minecraft:bedblocks
# fill -215 23 120 -393 23 300 air replace #minecraft:bedblocks
# fill -215 24 120 -393 24 300 air replace #minecraft:bedblocks
# fill -215 25 120 -393 25 300 air replace #minecraft:bedblocks
# fill -215 26 120 -393 26 300 air replace #minecraft:bedblocks
# fill -215 27 120 -393 27 300 air replace #minecraft:bedblocks
# fill -215 28 120 -393 28 300 air replace #minecraft:bedblocks
# fill -215 29 120 -393 29 300 air replace #minecraft:bedblocks
# fill -215 30 120 -393 30 300 air replace #minecraft:bedblocks
# fill -215 31 120 -393 31 300 air replace #minecraft:bedblocks
# fill -215 32 120 -393 32 300 air replace #minecraft:bedblocks
# fill -215 33 120 -393 33 300 air replace #minecraft:bedblocks
# fill -215 34 120 -393 34 300 air replace #minecraft:bedblocks
# fill -215 35 120 -393 35 300 air replace #minecraft:bedblocks
# fill -215 36 120 -393 36 300 air replace #minecraft:bedblocks
# fill -215 37 120 -393 37 300 air replace #minecraft:bedblocks
# fill -215 38 120 -393 38 300 air replace #minecraft:bedblocks
# fill -215 39 120 -393 39 300 air replace #minecraft:bedblocks
# fill -215 40 120 -393 40 300 air replace #minecraft:bedblocks
# fill -215 41 120 -393 41 300 air replace #minecraft:bedblocks
# fill -215 42 120 -393 42 300 air replace #minecraft:bedblocks
# fill -215 43 120 -393 43 300 air replace #minecraft:bedblocks
# fill -215 44 120 -393 44 300 air replace #minecraft:bedblocks
# fill -215 45 120 -393 45 300 air replace #minecraft:bedblocks
# fill -215 46 120 -393 46 300 air replace #minecraft:bedblocks
# fill -215 47 120 -393 47 300 air replace #minecraft:bedblocks
# fill -215 48 120 -393 48 300 air replace #minecraft:bedblocks
# fill -215 49 120 -393 49 300 air replace #minecraft:bedblocks
# fill -215 50 120 -393 50 300 air replace #minecraft:bedblocks
# fill -215 51 120 -393 51 300 air replace #minecraft:bedblocks
# fill -215 52 120 -393 52 300 air replace #minecraft:bedblocks
# fill -215 53 120 -393 53 300 air replace #minecraft:bedblocks
# fill -215 54 120 -393 54 300 air replace #minecraft:bedblocks
# fill -215 55 120 -393 55 300 air replace #minecraft:bedblocks
# fill -215 56 120 -393 56 300 air replace #minecraft:bedblocks
# fill -215 57 120 -393 57 300 air replace #minecraft:bedblocks
# fill -215 58 120 -393 58 300 air replace #minecraft:bedblocks
# fill -215 59 120 -393 59 300 air replace #minecraft:bedblocks
# fill -215 60 120 -393 60 300 air replace #minecraft:bedblocks
# fill -215 61 120 -393 61 300 air replace #minecraft:bedblocks
# fill -215 62 120 -393 62 300 air replace #minecraft:bedblocks
# fill -215 63 120 -393 63 300 air replace #minecraft:bedblocks
# fill -215 64 120 -393 64 300 air replace #minecraft:bedblocks
# fill -215 65 120 -393 65 300 air replace #minecraft:bedblocks
# fill -215 66 120 -393 66 300 air replace #minecraft:bedblocks
# fill -215 67 120 -393 67 300 air replace #minecraft:bedblocks
# fill -215 68 120 -393 68 300 air replace #minecraft:bedblocks
# fill -215 69 120 -393 69 300 air replace #minecraft:bedblocks
# fill -215 70 120 -393 70 300 air replace #minecraft:bedblocks
# fill -215 71 120 -393 71 300 air replace #minecraft:bedblocks
# fill -215 72 120 -393 72 300 air replace #minecraft:bedblocks
forceload add -216 300 -393 121
scoreboard players set bw.state state -1
schedule clear bedwars/resets/mogu
schedule clear bedwars/resets/unnamed
schedule clear bedwars/resets/space
scoreboard players set bw.reset board 0
title @a[tag=bw.player] times 0 200 0
gamemode spectator @a[tag=bw.player,gamemode=adventure]
execute if score bw.mode board matches 1 run function bedwars/resets/mogu
execute if score bw.mode board matches 2 run function bedwars/resets/unnamed
execute if score bw.mode board matches ..0 run function bedwars/resets/unnamed
execute if score bw.mode board matches 3.. run function bedwars/resets/space
scoreboard objectives modify bw.info displayname ["\u00a7e\u00a7l起床战争"]
scoreboard players reset * bw.info
scoreboard players set §707/28/21§8　§8m001A bw.info 14
scoreboard players set §a bw.info 13
scoreboard players set §r没有任何事情 bw.info 12
scoreboard players set §b bw.info 11
scoreboard players set §c红§8　§r红队:§a§l✓ bw.info 10
scoreboard players set §9蓝§8　§r蓝队:§a§l✓ bw.info 9
scoreboard players set §a绿§8　§r绿队:§a§l✓ bw.info 8
scoreboard players set §e黄§8　§r黄队:§a§l✓ bw.info 7
scoreboard players set §c bw.info 6
scoreboard players set §r没有任何信息：§a0§c bw.info 5
scoreboard players set §r没有任何信息：§a0§b bw.info 4
scoreboard players set §r没有任何信息：§a0 bw.info 3
scoreboard players set §d bw.info 2
scoreboard players set §eBedwars@MiniGame bw.info 1

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
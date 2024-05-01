##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a7c对不起，你淘汰了！"]
execute if entity @s[tag=killer.saver] run tellraw @a[team=play.killer] ["\u00a7a侦探 ",{"selector":"@s"},"\u00a7c 淘汰！"]
execute if entity @s[tag=killer.saver] run tellraw @a[team=wait.killer] ["\u00a7a侦探 ",{"selector":"@s"},"\u00a7c 淘汰！"]
execute if entity @s[tag=killer.killer] run tellraw @a[team=play.killer] ["\u00a7c杀手 ",{"selector":"@s"},"\u00a7c 淘汰！"]
execute if entity @s[tag=killer.killer] run tellraw @a[team=wait.killer] ["\u00a7c杀手 ",{"selector":"@s"},"\u00a7c 淘汰！"]
gamemode spectator @s
scoreboard players set play.killer.player tick 0
execute as @a[team=play.killer,gamemode=adventure] run scoreboard players add play.killer.player tick 1
title @a[team=play.killer] actionbar ["\u00a7c当前场上剩余选手： ",{"score":{"objective": "tick","name": "play.killer.player"},"color": "dark_purple"}]
tp @s 187 63 26 0 90

summon marker ~ ~ ~ {Tags:["killer.temp"]}
spreadplayers 187 26 0 25 under 67 false @e[tag=killer.temp]

execute store result score x temp run data get entity @e[tag=killer.temp,limit=1,sort=nearest] Pos[0]
execute store result score y temp run data get entity @e[tag=killer.temp,limit=1,sort=nearest] Pos[1]
execute store result score z temp run data get entity @e[tag=killer.temp,limit=1,sort=nearest] Pos[2]
tellraw @a[team=play.killer] ["\u00a7b一把弓掉落在 \u00a7a[x:",{"score":{"name": "x","objective": "temp"},"color": "yellow"},"\u00a7a,y:",{"score":{"name": "y","objective": "temp"},"color": "yellow"},"\u00a7a,z:",{"score":{"name": "z","objective": "temp"},"color": "yellow"},"\u00a7a]"]

execute unless entity @s[tag=killer.saver] at @e[tag=killer.temp] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoAI:1b,Silent:1b,NoGravity:1b,PersistenceRequired:1b,Glowing:0b,Tags:["killer.bow","new"],HandDropChances:[0f,0f],Invisible:true,ShowArms:true,NoBasePlate:true,DisabledSlots:2039326}

execute if entity @s[tag=killer.saver] at @e[tag=killer.temp] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'["\\u00a7a弓\\u00a77 - 右键获取"]',CustomNameVisible:1b,NoAI:1b,Silent:1b,NoGravity:1b,PersistenceRequired:1b,Glowing:1b,Tags:["killer.bow","new"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{dtb:1b},"minecraft:unbreakable":{},"minecraft:custom_name":'["\\u00a7a弓"]',"minecraft:enchantments":{levels:{"minecraft:power":10s}}}},{}],HandDropChances:[0f,0f],Invisible:true,ShowArms:true,NoBasePlate:true,DisabledSlots:2039326}
tag @e[tag=killer.bow] remove new
kill @e[tag=killer.temp,type=marker]
# bow{ms:1,Enchantments:[{id:"infinity",lvl:1s},{id:"power",lvl:10s}],Unbreakable:1b,HideFlags:63}
# execute as @e[type=item,tag=newitem] at @s run function killerever/ranitem
# summon item 142 55 -21 {Item:{id:"minecraft:bow",tag:{ms:1,Enchantments:[{id:"infinity"},{id:"power",lvl:10s}],Unbreakable:1b,HideFlags:63}}}
# tag @s remove killer.saver

##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
##
#summon marker ~ ~ ~ {Tags:["pve.spawn.3","pve.spawn","pve"]}

execute if score zombie.type board matches 2 as @e[tag=pve.spawn.3,limit=5,sort=random] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}],attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1.4d,id:"attack_speed"}]}
execute if score zombie.type board matches 1 as @e[tag=pve.spawn.3,limit=5,sort=random] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}],attributes:[{base:0.2d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}]}
execute as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.3,limit=2,sort=random] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}],attributes:[{base:0.2d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}]}

# Total

execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}



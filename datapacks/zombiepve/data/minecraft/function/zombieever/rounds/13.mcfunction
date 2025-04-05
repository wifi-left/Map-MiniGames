##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
##
# summon marker ~ ~ ~ {Tags:["pve","pve.spawn","pve.spawn.findkey"]}
execute as @e[tag=pve.spawn.findkey,limit=10,sort=random] at @s run summon drowned ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}],HandItems:[{id:"minecraft:trident"},{}],attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}]}
execute as @e[tag=pve.spawn.findkey,limit=2,sort=random] at @s run summon guardian ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}],attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}]}


## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}
scoreboard players set zombie.state state 2



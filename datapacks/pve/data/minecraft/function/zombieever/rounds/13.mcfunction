##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
execute as @e[tag=pve.spawn.findkey,limit=10,sort=random] at @s run summon drowned ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:trident"}}}
execute as @e[tag=pve.spawn.findkey,limit=2,sort=random] at @s run summon guardian ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}


## WARNING: The transformation may cause problem. You might need to modify it by yourself.
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f,offhand:0.0f}}
scoreboard players set zombie.state state 2

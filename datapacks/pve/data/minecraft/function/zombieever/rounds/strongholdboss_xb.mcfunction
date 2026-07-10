##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
##
##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
##
# summon marker ~ ~ ~ {Tags:["pve","pve.spawn","pve.spawn.stongholdboss"]}
execute as @e[tag=pve.spawn.stongholdboss,limit=2,sort=random] at @s run summon vindicator ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.25d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:iron_axe"}}}
execute as @e[tag=pve.spawn.stongholdboss,limit=2,sort=random] at @s run summon vindicator ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.25d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:iron_axe"}}}
execute if score zombie.type board matches 2 as @e[tag=pve.spawn.stongholdboss,limit=1,sort=random] at @s run summon pillager ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.25d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:crossbow"}}}


execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f,offhand:0.0f}}

scoreboard players set zombie.state state 1
scoreboard players set zombie.round board 26




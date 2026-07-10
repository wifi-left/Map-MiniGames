##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score zombie.type board matches 2 as @e[tag=pve.spawn.village.iron,limit=2,sort=random] at @s run summon iron_golem ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.35d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1.4d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}},drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f}}
execute if score zombie.type board matches 1 as @e[tag=pve.spawn.village.iron,limit=2,sort=random] at @s run summon iron_golem ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.2d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}},drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f}}
execute as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.village.iron,limit=1,sort=random] at @s run summon iron_golem ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.2d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}


## WARNING: Unsupport transformation
execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f,offhand:0.0f}}
scoreboard players set zombie.state state 1

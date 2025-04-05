##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score zombie.round board matches 21..22 as @e[tag=pve.spawn.stronghold,limit=3,sort=random] at @s run summon vindicator ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:iron_axe"}}}
execute if score zombie.round board matches 21..22 as @e[tag=pve.spawn.stronghold,limit=3,sort=random] at @s run summon pillager ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:crossbow"}}}
execute if score zombie.type board matches 2 if score zombie.round board matches 18..22 as @e[tag=pve.spawn.stronghold,limit=8,sort=random] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.35d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}
execute if score zombie.type board matches 1 if score zombie.round board matches 18..22 as @e[tag=pve.spawn.stronghold,limit=5,sort=random] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}
execute if score zombie.round board matches 19..22 as @e[tag=pve.spawn.stronghold,limit=5,sort=random] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:bow"}}}
execute if score zombie.round board matches 19..22 as @e[tag=pve.spawn.stronghold,limit=2,sort=random] at @s run summon witch ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}


execute if score zombie.round board matches 21..22 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.stronghold,limit=1,sort=random] at @s run summon vindicator ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:iron_axe"}}}
execute if score zombie.round board matches 21..22 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.stronghold,limit=1,sort=random] at @s run summon pillager ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:crossbow"}}}
execute if score zombie.round board matches 20..22 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.stronghold,limit=2,sort=random] at @s run summon witch ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}

execute if score zombie.type board matches 2 if score zombie.round board matches 18..22 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.stronghold,limit=2,sort=random] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}
execute if score zombie.type board matches 1 if score zombie.round board matches 18..22 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.stronghold,limit=1,sort=random] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.25d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"}}}
execute if score zombie.round board matches 19..22 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.stronghold,limit=2,sort=random] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:bow"}}}



## WARNING: The transformation may cause problem. You might need to modify it by yourself.
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f,offhand:0.0f}}

scoreboard players set zombie.state state 1

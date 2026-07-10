##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# summon marker ~ ~ ~ {Tags:["pve","pve.spawn","pve.spawn.lava"]}
execute if score zombie.round board matches 23..24 as @e[tag=pve.spawn.lava,limit=5,sort=random] at @s run summon blaze ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:iron_axe"}}}
execute if score zombie.round board matches 23 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.lava,limit=2,sort=random] at @s run summon blaze ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.3d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:iron_axe"}}}
execute if score zombie.round board matches 24 as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.lava,limit=3,sort=random] at @s run summon blaze ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",attributes:[{base:0.4d,id:"movement_speed"},{base:3d,id:"attack_damage"},{base:1d,id:"attack_speed"}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:iron_axe"}}}



execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f,offhand:0.0f}}

scoreboard players set zombie.state state 1


scoreboard players set zombie.round board 11

execute as @e[tag=pve.spawn.rabbit,limit=2,sort=random] at @s run summon rabbit ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",RabbitType:99,Health:3,attributes:[{base:0.4d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:3d,id:"attack_speed"},{base:3d,id:"max_health"}],equipment:{head:{id:"minecraft:leather_helmet"}},drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f}}
execute as @a[team=play.zombie,gamemode=adventure] as @e[tag=pve.spawn.rabbit,limit=1,sort=random] at @s run summon rabbit ~ ~ ~ {RabbitType:99,Tags:["pve.zombie"],DeathLootTable:"minecraft:empty",Health:3,attributes:[{base:0.4d,id:"movement_speed"},{base:5d,id:"attack_damage"},{base:1d,id:"attack_speed"},{base:3d,id:"max_health"}],equipment:{head:{id:"minecraft:leather_helmet"}}}

## WARNING: Unsupport transformation
execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f,offhand:0.0f}}
scoreboard players set zombie.state state 1

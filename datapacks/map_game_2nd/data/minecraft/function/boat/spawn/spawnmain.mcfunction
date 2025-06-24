##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s carrot_on_a_stick[]
tag @s remove boat.notspawn
tag @s add boat.sel
team leave @s
data modify block -54 160 -100 front_text.messages[0] set value [{"selector":"@a[tag=boat.sel]","color":"gold"},"\u00a7b\u00a7l的载具"]
team join boat @s

execute if score boat.type board matches 1 run summon minecraft:cherry_boat ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,Tags:["boat","boat.new"]}

# 赛车
# execute if score boat.type board matches 2 run summon minecart ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,Tags:["boat","boat.new"],DeathLootTable:"minecraft:empty",Team:"boat"}

execute if score boat.type board matches 2 run summon minecraft:pig ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Tags:["boat","boat.new"],DeathLootTable:"minecraft:empty",Team:"boat",NoAI:0b,attributes:[{base:0.22d,id:"movement_speed"}],equipment:{saddle:{id:"saddle"}}}
execute if score boat.type board matches 5 run summon minecraft:horse ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Tags:["boat","boat.new"],DeathLootTable:"minecraft:empty",Team:"boat",NoAI:0b,Tame:true,equipment:{saddle:{id:"saddle"}},Temper:100,attributes:[{base:0.3d,id:"movement_speed"},{base:0.6d,id:"horse.jump_strength"}]}

execute as @e[tag=boat.new] run scoreboard players operation @s park.uuid = @a[limit=1,tag=boat.sel] park.uuid
execute as @e[tag=boat.new1] run scoreboard players operation @s park.uuid = @a[limit=1,tag=boat.sel] park.uuid

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=boat.new] run data modify entity @s CustomName set from block -54 160 -100 front_text.messages[0]
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=boat.new1] run data modify entity @s CustomName set from block -54 160 -100 front_text.messages[0]

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=boat.new] run data modify entity @s Owner set from entity @a[limit=1,tag=boat.sel] UUID
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=boat.new1] run data modify entity @s Owner set from entity @a[limit=1,tag=boat.sel] UUID
execute as @e[tag=boat.new] run team join boat @s
ride @s mount @e[tag=boat.new,limit=1]
execute as @e[tag=boat.new] run tag @s remove boat.new
execute as @e[tag=boat.new1] run tag @s remove boat.new1
tag @s remove boat.sel
tellraw @s ["\n§b你已经骑上载具！\n"]


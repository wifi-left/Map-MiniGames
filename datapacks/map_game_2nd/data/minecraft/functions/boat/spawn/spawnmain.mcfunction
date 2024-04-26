clear @s carrot_on_a_stick{boatItem:3b}
tag @s remove boat.notspawn
tag @s add boat.sel
team leave @s
data modify block -54 160 -100 front_text.messages[0] set value '[{"selector":"@a[tag=boat.sel]","color":"gold"},"\\u00a7b\\u00a7l的载具"]'
team join boat @s

execute if score boat.type board matches 1 run summon minecraft:boat ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,Tags:["boat","boat.new"]}
execute if score boat.type board matches 2 run summon minecraft:pig ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Tags:["boat","boat.new"],DeathLootTable:"",Saddle:1b,Team:"boat",Attributes:[{Base:0.23d,Name:"generic.movement_speed"}],NoAI:1b}
execute if score boat.type board matches 3 run summon minecraft:strider ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Tags:["boat","boat.new"],DeathLootTable:"",Saddle:1b,Team:"boat",Attributes:[{Base:0.22d,Name:"generic.movement_speed"}],NoAI:1b}
execute if score boat.type board matches 5 run summon minecraft:horse ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Tags:["boat","boat.new"],DeathLootTable:"",Team:"boat",Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Name:"horse.jump_strength",Base:0.6d}],NoAI:1b,Tame:true,SaddleItem:{id:"minecraft:saddle",Count:1b},Temper:100}

execute as @e[tag=boat.new] run scoreboard players operation @s park.uuid = @a[limit=1,tag=boat.sel] park.uuid
execute as @e[tag=boat.new] run data modify entity @s CustomName set from block -54 160 -100 front_text.messages[0]
execute as @e[tag=boat.new] run data modify entity @s Owner set from entity @a[limit=1,tag=boat.sel] UUID
execute as @e[tag=boat.new] run team join boat @s
ride @s mount @e[tag=boat.new,limit=1]
execute as @e[tag=boat.new] run tag @s remove boat.new
tag @s remove boat.sel
tellraw @s ["\n\u00a7b你已经骑上载具！\n"]
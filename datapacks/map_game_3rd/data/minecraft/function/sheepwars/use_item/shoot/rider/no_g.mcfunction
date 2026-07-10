execute anchored eyes run summon sheep ^ ^ ^ {Tags:["sheepwars.new","sheepwars.sheep.nogravity","sheepwars.rider"],NoAI:true,Silent:true,Motion:[0d,0d,0d],NoGravity:false,DeathLootTable:"empty",Invulnerable:false,attributes:[{base:-1,id:"movement_speed"},{base:-1,id:"jump_strength"},{base:10000,id:"safe_fall_distance"},{base:0,id:"fall_damage_multiplier"},{base:1000,id:"knockback_resistance"}],Color:0,CustomName:{text:"云霄绵羊",color:white}}

execute at @s anchored eyes as @e[tag=sheepwars.new,type=sheep] run function minecraft:sheepwars/use_item/give_motion/no_gravity

ride @s dismount
ride @s mount @e[tag=sheepwars.new,type=sheep,limit=1]

tag @e[tag=sheepwars.new,type=sheep] remove sheepwars.new
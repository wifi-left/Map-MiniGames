tag @s remove sheepwars.sheep.nogravity
tag @s[tag=sheepwars.sheep.normal] add sheepwars.sheep.isnormal
tag @s remove sheepwars.sheep.normal
data merge entity @s {NoGravity:false,Invulnerable:false,NoAI:false,attributes:[{base:-1,id:"movement_speed"},{base:-1,id:"jump_strength"},{base:1000,id:"knockback_resistance"}],Glowing:true}
function minecraft:sheepwars/use_item/target/trigger
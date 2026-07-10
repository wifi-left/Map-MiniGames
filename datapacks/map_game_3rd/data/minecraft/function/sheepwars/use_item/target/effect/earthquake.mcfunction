tag @s add sheepwars.countdown
scoreboard players set @s board 200
data merge entity @s {NoGravity:false,Invulnerable:true,NoAI:false,attributes:[{base:-1,id:"movement_speed"},{base:-1,id:"jump_strength"},{base:1000,id:"knockback_resistance"}],Glowing:true}
data merge entity @s {NoGravity:true,Invulnerable:false,NoAI:false,attributes:[{base:-1,id:"movement_speed"},{base:-1,id:"jump_strength"},{base:1000,id:"knockback_resistance"}],Glowing:true}

data merge entity @s {NoGravity:false,Invulnerable:false,NoAI:false,attributes:[{base:-1,id:"movement_speed"},{base:-1,id:"jump_strength"},{base:10000,id:"safe_fall_distance"},{base:1000,id:"knockback_resistance"},{base:0,id:"fall_damage_multiplier"}]}
tag @s add sheepwars.sheep.normal

# execute unless block ^ ^ ^1 #can_glide_through unless block ^ ^ ^1 #air run return fail
rotate @s ~ ~

execute in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^5 {Tags:["t.tmp"]}

data modify entity @s Motion set from entity @e[limit=1,tag=t.tmp] Pos
kill @e[tag=t.tmp,type=marker]
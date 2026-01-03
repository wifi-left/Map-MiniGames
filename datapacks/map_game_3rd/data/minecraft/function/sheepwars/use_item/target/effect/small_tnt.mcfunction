
execute as @s[tag=sheepwars.sheep.isnormal] run summon tnt ~ ~ ~ {fuse:0,NoGravity:false,explosion_power:4}
execute as @s[tag=!sheepwars.sheep.isnormal] run summon tnt ~ ~ ~ {fuse:0,NoGravity:false,explosion_power:3}
function minecraft:sheepwars/use_item/target/kill_sheep_self
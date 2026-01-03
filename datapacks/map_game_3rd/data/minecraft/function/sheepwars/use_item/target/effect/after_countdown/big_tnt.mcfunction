execute as @s[tag=sheepwars.sheep.isnormal] run summon tnt ~ ~ ~ {fuse:0,NoGravity:false,explosion_power:8}
execute as @s[tag=!sheepwars.sheep.isnormal] run summon tnt ~ ~ ~ {fuse:0,NoGravity:false,explosion_power:6}

execute as @s[tag=sheepwars.sheep.isnormal] run summon tnt ^ ^ ^1 {fuse:0,NoGravity:false,explosion_power:8}
execute as @s[tag=!sheepwars.sheep.isnormal] run summon tnt ^ ^ ^1 {fuse:0,NoGravity:false,explosion_power:6}

execute as @s[tag=sheepwars.sheep.isnormal] run summon tnt ^ ^ ^-1 {fuse:0,NoGravity:false,explosion_power:8}
execute as @s[tag=!sheepwars.sheep.isnormal] run summon tnt ^ ^ ^-1 {fuse:0,NoGravity:false,explosion_power:6}
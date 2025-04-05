# execute at @s positioned 0.0 0.0 0.0 rotated as @s anchored eyes run summon marker ^ ^ ^3 {Tags:["tmp"]}
execute as @s at @s in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.25 {Tags:["t.tmp"]}
execute as @s[team=play.tntwars] anchored eyes run summon fireball ^ ^ ^1 {Tags:["t.new","tntwars.tnt"],ExplosionPower:5,acceleration_power:0.4d}
execute as @s[team=play.sw] anchored eyes run summon fireball ^ ^ ^1 {Tags:["t.new","tntwars.tnt"],ExplosionPower:2,acceleration_power:0.4d}
tag @s add t.t.tmp

execute as @e[tag=t.new] run data modify entity @s Owner set from entity @a[limit=1,tag=t.t.tmp] UUID
tag @s remove t.t.tmp
# summon tnt_minecart ^ ^ ^2 {Tags:["tntwars.tnt"]}

execute as @e[tag=t.new] run data modify entity @s Motion set from entity @e[limit=1,tag=t.tmp] Pos
# execute as @e[tag=tntwars.tnt] at @s run tp ~ ~1 ~

execute as @e[tag=t.new] at @s run data modify entity @s Motion set from entity @e[tag=t.tmp,type=marker,limit=1] Pos
# execute as @e[tag=t.new] at @s run data modify entity @s Motion[1] set value 0.5
tag @e[tag=t.new] remove t.new

kill @e[tag=t.tmp,type=marker]

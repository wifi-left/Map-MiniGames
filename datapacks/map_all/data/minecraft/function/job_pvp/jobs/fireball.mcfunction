execute as @s at @s in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1.5 {Tags:["t.tmp"]}
execute anchored eyes run summon fireball ^ ^ ^ {Tags:["t.new"],ExplosionPower:1,acceleration_power:0.4d}
execute as @e[tag=t.new] run data modify entity @s Motion set from entity @e[limit=1,tag=t.tmp] Pos
data modify entity @e[tag=t.new,limit=1] Owner set from entity @s UUID

tag @e[tag=t.new] remove t.new
kill @e[tag=t.tmp,type=marker]

xp add @s 15 levels
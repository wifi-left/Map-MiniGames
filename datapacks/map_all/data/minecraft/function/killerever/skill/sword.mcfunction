execute as @s at @s in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["t.tmp"]}
execute anchored eyes run summon arrow ^ ^ ^ {Tags:["t.new","killer.arrow"],item:{id:"iron_sword"},NoGravity:true}
data modify entity @e[tag=t.new,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=t.new] run data modify entity @s Motion set from entity @e[limit=1,tag=t.tmp] Pos
data modify entity @e[tag=t.new,limit=1] Owner set from entity @s UUID

tag @e[tag=t.new] remove t.new
kill @e[tag=t.tmp,type=marker]
xp add @s 10 levels
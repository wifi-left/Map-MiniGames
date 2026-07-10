execute as @s at @s in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1.5 {Tags:["t.tmp"]}
execute anchored eyes run summon snowball ^ ^ ^ {Tags:["t.new"]}
execute as @e[tag=t.new] run data modify entity @s Motion set from entity @e[limit=1,tag=t.tmp] Pos
ride @s mount @e[tag=t.new,limit=1]
tag @e[tag=t.new] remove t.new
kill @e[tag=t.tmp,type=marker]
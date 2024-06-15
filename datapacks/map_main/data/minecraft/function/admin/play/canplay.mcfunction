execute as @s[tag=map.op] run return 1
execute unless entity @s run return 1
execute as @s[tag=play.total] run return 1
execute if score map.playmode board matches 0 run return 1
execute unless entity @a[tag=map.op] if score map.playmode.offline board matches 1 run return 1
return 0
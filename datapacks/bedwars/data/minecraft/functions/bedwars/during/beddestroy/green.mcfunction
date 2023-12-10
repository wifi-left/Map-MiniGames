scoreboard players reset bd.green state
execute as @a[scores={pickgreen=1..},team=bw.green] run tellraw @s ["\u00a7c你不能破坏自己的床！"]
execute as @a[scores={pickgreen=1..},team=bw.green] run function minecraft:bedwars/resets/beds/green
# execute as @a[scores={pickgreen=1..},team=bw.green] run setblock -236 31 208 lime_bed[facing=east,part=head]
execute as @a[scores={pickgreen=1..},team=bw.green] run scoreboard players set bd.green state 1

# execute unless entity @a[scores={pickgreen=1..}] run setblock -237 31 208 lime_bed[facing=east]
# execute unless entity @a[scores={pickgreen=1..}] run setblock -236 31 208 lime_bed[facing=east,part=head]
# execute unless entity @a[scores={pickgreen=1..}] run scoreboard players set bd.green state 1

execute unless entity @a[scores={pickgreen=1..},team=bw.green] run tellraw @a[tag=bw.player] ["\n\u00a7f\u00a7l床被破坏了 > \u00a7a绿队的床\u00a77被",{"selector":"@a[scores={pickgreen=1..}]"},"\u00a77破坏了！\n"]
execute unless entity @a[scores={pickgreen=1..},team=bw.green] as @a at @s run playsound entity.ender_dragon.growl player @s
execute unless entity @a[scores={pickgreen=1..},team=bw.green] run title @a[team=bw.green] title ["\u00a7c床已被破坏"]
execute unless entity @a[scores={pickgreen=1..},team=bw.green] run title @a[team=bw.green] subtitle ["\u00a7r你将无法重生！"]

# setblock -371 31 210 yellow_bed[facing=west]
# setblock -372 31 210 yellow_bed[facing=west,part=head]

# setblock -305 31 142 red_bed[facing=north]
# setblock -305 31 141 red_bed[facing=north,part=head]

# setblock -237 31 208 lime_bed[facing=east]
# setblock -236 31 208 lime_bed[facing=east,part=head]

# setblock -303 31 276 blue_bed[facing=south]
# setblock -303 31 277 blue_bed[facing=south,part=head]

execute unless entity @a[scores={pickgreen=1..},team=bw.green] run scoreboard players reset §a绿§8　§r绿队:§a§l✓ bw.info
execute unless entity @a[scores={pickgreen=1..},team=bw.green] run scoreboard players set §a绿§8　§r绿队:§e§l❁ bw.info 8
##scoreboard players set §a绿§8　§r绿队:§c§l✗ bw.info 8
scoreboard players reset * pickgreen

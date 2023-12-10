scoreboard players reset bd.blue state
execute as @a[scores={pickblue=1..},team=bw.blue] run tellraw @s ["\u00a7c你不能破坏自己的床！"]
execute as @a[scores={pickblue=1..},team=bw.blue] run function minecraft:bedwars/resets/beds/blue
# execute as @a[scores={pickblue=1..},team=bw.blue] run setblock -303 31 277 blue_bed[facing=south,part=head]
execute as @a[scores={pickblue=1..},team=bw.blue] run scoreboard players set bd.blue state 1

# execute unless entity @a[scores={pickblue=1..}] run setblock -303 31 276 blue_bed[facing=south]
# execute unless entity @a[scores={pickblue=1..}] run setblock -303 31 277 blue_bed[facing=south,part=head]
# execute unless entity @a[scores={pickblue=1..}] run scoreboard players set bd.blue state 1

execute unless entity @a[scores={pickblue=1..},team=bw.blue] run tellraw @a[tag=bw.player] ["\n\u00a7f\u00a7l床被破坏了 > \u00a79蓝队的床\u00a77被",{"selector":"@a[scores={pickblue=1..}]"},"\u00a77破坏了！\n"]
execute unless entity @a[scores={pickblue=1..},team=bw.blue] as @a at @s run playsound entity.ender_dragon.growl player @s
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run title @a[team=bw.blue] title ["\u00a7c床已被破坏"]
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run title @a[team=bw.blue] subtitle ["\u00a7r你将无法重生！"]

# setblock -371 31 210 yellow_bed[facing=west]
# setblock -372 31 210 yellow_bed[facing=west,part=head]

# setblock -305 31 142 red_bed[facing=north]
# setblock -305 31 141 red_bed[facing=north,part=head]

# setblock -237 31 208 lime_bed[facing=east]
# setblock -236 31 208 lime_bed[facing=east,part=head]

# setblock -303 31 276 blue_bed[facing=south]
# setblock -303 31 277 blue_bed[facing=south,part=head]

execute unless entity @a[scores={pickblue=1..},team=bw.blue] run scoreboard players reset §9蓝§8　§r蓝队:§a§l✓ bw.info
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run scoreboard players set §9蓝§8　§r蓝队:§e§l❁ bw.info 9
##coreboard players set §9蓝§8　§r蓝队:§c§l✗ bw.info 9
scoreboard players reset * pickblue

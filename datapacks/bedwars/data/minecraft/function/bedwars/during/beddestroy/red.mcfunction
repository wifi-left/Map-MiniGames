##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bd.red state 0
execute as @a[scores={pickred=1..},team=bw.red] run tellraw @s ["§c你不能破坏自己的床！"]
execute as @a[scores={pickred=1..},team=bw.red] run function minecraft:bedwars/resets/beds/red
# execute as @a[scores={pickred=1..},team=bw.red] run setblock -305 31 141 red_bed[facing=north,part=head]
execute as @a[scores={pickred=1..},team=bw.red] run scoreboard players set bd.red state 1

# execute unless entity @a[scores={pickred=1..}] run setblock -305 31 142 red_bed[facing=north]
# execute unless entity @a[scores={pickred=1..}] run setblock -305 31 141 red_bed[facing=north,part=head]
# execute unless entity @a[scores={pickred=1..}] run scoreboard players set bd.red state 1

execute unless entity @a[scores={pickred=1..},team=bw.red] run tellraw @a[tag=bw.player] ["\n§f§l床被破坏了 > §c红队的床§7被",{"selector":"@a[scores={pickred=1..}]"},"§7破坏了！\n"]
execute unless entity @a[scores={pickred=1..},team=bw.red] as @a at @s run playsound entity.ender_dragon.growl player @s
execute unless entity @a[scores={pickred=1..},team=bw.red] run title @a[team=bw.red] title ["\u00a7c床已被破坏"]
execute unless entity @a[scores={pickred=1..},team=bw.red] run title @a[team=bw.red] subtitle ["\u00a7r你将无法重生！"]

# setblock -371 31 210 red_bed[facing=west]
# setblock -372 31 210 red_bed[facing=west,part=head]

# setblock -305 31 142 red_bed[facing=north]
# setblock -305 31 141 red_bed[facing=north,part=head]

# setblock -237 31 208 lime_bed[facing=east]
# setblock -236 31 208 lime_bed[facing=east,part=head]

# setblock -303 31 276 red_bed[facing=south]
# setblock -303 31 277 red_bed[facing=south,part=head]

execute unless entity @a[scores={pickred=1..},team=bw.red] run function minecraft:bedwars/during/updateinfo/red

scoreboard players reset * pickred



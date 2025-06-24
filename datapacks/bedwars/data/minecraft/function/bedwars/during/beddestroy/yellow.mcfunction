##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bd.yellow state 0
execute as @a[scores={pickyellow=1..},team=bw.yellow] run tellraw @s ["§c你不能破坏自己的床！"]
execute as @a[scores={pickyellow=1..},team=bw.yellow] run function minecraft:bedwars/resets/beds/yellow
# execute as @a[scores={pickyellow=1..},team=bw.yellow] run
execute as @a[scores={pickyellow=1..},team=bw.yellow] run scoreboard players set bd.yellow state 1

# execute unless entity @a[scores={pickyellow=1..}] run setblock -371 31 210 yellow_bed[facing=west]
# execute unless entity @a[scores={pickyellow=1..}] run setblock -372 31 210 yellow_bed[facing=west,part=head]
# execute unless entity @a[scores={pickyellow=1..}] run scoreboard players set bd.yellow state 1

execute unless entity @a[scores={pickyellow=1..},team=bw.yellow] run tellraw @a[tag=bw.player] ["\n§f§l床被破坏了 > §e黄队的床§7被",{"selector":"@a[scores={pickyellow=1..}]"},"§7破坏了！\n"]
execute unless entity @a[scores={pickyellow=1..},team=bw.yellow] as @a at @s run playsound entity.ender_dragon.growl player @s
execute unless entity @a[scores={pickyellow=1..},team=bw.yellow] run title @a[team=bw.yellow] title ["\u00a7c床已被破坏"]
execute unless entity @a[scores={pickyellow=1..},team=bw.yellow] run title @a[team=bw.yellow] subtitle ["\u00a7r你将无法重生！"]

# setblock -371 31 210 yellow_bed[facing=west]
# setblock -372 31 210 yellow_bed[facing=west,part=head]

# setblock -305 31 142 red_bed[facing=north]
# setblock -305 31 141 red_bed[facing=north,part=head]

# setblock -237 31 208 lime_bed[facing=east]
# setblock -236 31 208 lime_bed[facing=east,part=head]

# setblock -303 31 276 yellow_bed[facing=south]
# setblock -303 31 277 yellow_bed[facing=south,part=head]

execute unless entity @a[scores={pickyellow=1..},team=bw.yellow] run function minecraft:bedwars/during/updateinfo/yellow

scoreboard players reset * pickyellow



scoreboard players set bd.blue state 0
execute as @a[scores={pickblue=1..},team=bw.blue] run tellraw @s ["§c你不能破坏自己的床！"]
execute as @a[scores={pickblue=1..},team=bw.blue] run function minecraft:bedwars/resets/beds/blue
execute as @a[scores={pickblue=1..},team=bw.blue] run scoreboard players set bd.blue state 1
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run tellraw @a[tag=bw.player] ["\n§f§l床被破坏了 > §9蓝队的床§7被",{"selector":"@a[scores={pickblue=1..}]"},"§7破坏了！\n"]
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run execute as @a[scores={pickblue=1..},tag=play.total] run function minecraft:small_games/total/win_score {score:1}

execute unless entity @a[scores={pickblue=1..},team=bw.blue] as @a at @s run playsound entity.ender_dragon.growl player @s
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run title @a[team=bw.blue] title ["\u00a7c床已被破坏"]
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run title @a[team=bw.blue] subtitle ["\u00a7r你将无法重生！"]
execute unless entity @a[scores={pickblue=1..},team=bw.blue] run function minecraft:bedwars/during/updateinfo/blue
scoreboard players reset * pickblue



scoreboard players add sheep.randomteam temp 1
execute if score sheep.randomteam temp matches 3.. run scoreboard players set sheep.randomteam temp 1
tag @r[tag=sheepwars.tobeteamed] add sheepwars.sel
execute if score sheep.randomteam temp matches 1 as @a[tag=sheepwars.sel] run team join play.sheepwars.a @s
execute if score sheep.randomteam temp matches 1 as @a[tag=sheepwars.sel] run tellraw @s ["\u00a7a你加入了\u00a79队伍A"]
execute if score sheep.randomteam temp matches 2 as @a[tag=sheepwars.sel] run team join play.sheepwars.b @s
execute if score sheep.randomteam temp matches 2 as @a[tag=sheepwars.sel] run tellraw @s ["\u00a7a你加入了\u00a7c队伍B"]

tag @a[tag=sheepwars.sel] remove sheepwars.tobeteamed
tag @a[tag=sheepwars.sel] remove sheepwars.sel

execute if entity @a[tag=sheepwars.tobeteamed] run function minecraft:sheepwars/random_team
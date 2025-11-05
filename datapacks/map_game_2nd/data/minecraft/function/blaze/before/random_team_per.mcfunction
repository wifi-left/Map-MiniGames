tag @a[team=blaze.wait,limit=1,sort=random,gamemode=adventure] add blaze.sel
scoreboard players add blaze.randomteam board 1
execute if score blaze.randomteam board matches 3.. run scoreboard players set blaze.randomteam board 1
execute if score blaze.randomteam board matches 1 as @a[tag=blaze.sel] run function minecraft:blaze/before/join/a
execute if score blaze.randomteam board matches 2 as @a[tag=blaze.sel] run function minecraft:blaze/before/join/b
tag @a[tag=blaze.sel] remove blaze.sel
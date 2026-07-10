
scoreboard players set live.state state 1
execute as @a[team=live] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
scoreboard players set live.player tick 0
execute as @a[team=live,gamemode=adventure] run scoreboard players add live.player tick 1
scoreboard players add live.player tick 2

fill 222 -61 229 191 -37 260 air replace minecraft:heavy_weighted_pressure_plate

execute as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 6.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 9.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 12.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 15.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 18.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 21.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 24.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 27.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 30.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 33.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 36.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 39.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 42.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 45.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 48.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 51.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 54.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 57.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer
execute if score live.player tick matches 60.. as @a[team=live,tag=live.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:live/become_killer

scoreboard players remove live.player tick 2

execute unless entity @a[team=live.killer,gamemode=adventure] run function minecraft:live/over


scoreboard players set live.time board 61
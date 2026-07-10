scoreboard players set one_arrow.time tick 0
scoreboard players set one_arrow.player tick 0
execute as @a[team=one_arrow,gamemode=adventure] run scoreboard players add one_arrow.player tick 1

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}]

execute as @a[team=one_arrow,gamemode=adventure] at @s run function minecraft:one_arrow/map/true_start
scoreboard players set one_arrow.state state 3
execute as @a[team=one_arrow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1

team modify one_arrow friendlyFire true


return 0
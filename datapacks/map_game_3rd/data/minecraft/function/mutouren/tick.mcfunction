execute if score mutouren.state state matches 3 as @a[team=mutouren] run function minecraft:mutouren/g_item

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mutouren:tool}}}}]

execute as @a[team=mutouren,gamemode=adventure] at @s if block ~ ~-0.5 ~ magma_block run function minecraft:mutouren/died
execute as @a[team=mutouren,gamemode=adventure] at @s if block ~ ~-0.5 ~ emerald_block run function minecraft:mutouren/win

execute as @e[tag=mutouren.pillager,type=pillager] at @s run rotate @s facing entity @a[sort=nearest,limit=1,team=mutouren,gamemode=adventure]
execute if score elytra.state state matches 3 as @a[team=elytra] run function minecraft:elytra/g_item

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{elytra:tool}}}}]

execute as @a[team=elytra,gamemode=adventure] at @s if block ~ ~ ~ lava run function minecraft:elytra/died
execute as @a[team=elytra,gamemode=adventure] at @s if block ~ ~-1 ~ emerald_block run function minecraft:elytra/win
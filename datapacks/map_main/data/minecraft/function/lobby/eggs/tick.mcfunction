
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_eggs:true,egg_type:1}}}}]

execute in overworld run data modify block 195 212 -84 Items set value [{components: {"minecraft:lore": ["(+NBT)"], "minecraft:custom_name": "从天上拿过来的命令方块[别踢我]awa","minecraft:custom_data":{is_eggs:true,egg_type:1}}, count: 1, Slot: 0b, id: "minecraft:chain_command_block"}]
execute in overworld run data modify block 196 212 -84 Items set value []

execute in overworld run data modify block 195 211 -84 Items set value [{components: {"minecraft:custom_data":{is_eggs:true,egg_type:2}}, count: 1, Slot: 0b, id: "minecraft:diamond"}]
execute in overworld run data modify block 196 211 -84 Items set value []

execute as @a[team=lobby,gamemode=adventure,advancements={lobby/wtf_command_block=false}] if items entity @s player.cursor chain_command_block[minecraft:custom_data~{is_eggs:true,egg_type:1}] run advancement grant @s only lobby/wtf_command_block
execute as @a[team=lobby,gamemode=adventure,advancements={lobby/wtf_command_block=false}] if items entity @s weapon.* chain_command_block[minecraft:custom_data~{is_eggs:true,egg_type:1}] run advancement grant @s only lobby/wtf_command_block
execute as @a[team=lobby,gamemode=adventure,advancements={lobby/wtf_command_block=false}] if items entity @s container.* chain_command_block[minecraft:custom_data~{is_eggs:true,egg_type:1}] run advancement grant @s only lobby/wtf_command_block


execute as @a[team=lobby,gamemode=adventure,advancements={lobby/how_to_open_chest=false}] if items entity @s player.cursor diamond[minecraft:custom_data~{is_eggs:true,egg_type:2}] run advancement grant @s only lobby/how_to_open_chest
execute as @a[team=lobby,gamemode=adventure,advancements={lobby/how_to_open_chest=false}] if items entity @s weapon.* diamond[minecraft:custom_data~{is_eggs:true,egg_type:2}] run advancement grant @s only lobby/how_to_open_chest
execute as @a[team=lobby,gamemode=adventure,advancements={lobby/how_to_open_chest=false}] if items entity @s container.* diamond[minecraft:custom_data~{is_eggs:true,egg_type:2}] run advancement grant @s only lobby/how_to_open_chest
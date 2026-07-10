clear @s *[custom_data~{"game_total":1,total.sel:b}]
execute if data storage minecraft:temp total_game_wur.b{id:none} run return fail

execute in overworld run item replace block 0 2 0 container.2 with paper[custom_data={"game_total":1,total.sel:b},item_name='选择B',custom_name='']
data modify block 0 -2 0 front_text.messages[1] set value [{text:"按下",color:blue,italic:false},{keybind:"key.swapOffhand",color:gold},{text:"来选择[",color:blue},{"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"blue","bold":true,interpret:true},{text:"]",color:blue}]
data modify block 0 2 0 Items[{Slot:2b}].components."minecraft:custom_name" set from block 0 -2 0 front_text.messages[1]
item replace entity @s hotbar.5 from block 0 2 0 container.2

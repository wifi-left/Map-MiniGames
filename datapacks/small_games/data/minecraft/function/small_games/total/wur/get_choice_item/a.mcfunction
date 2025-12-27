
clear @s *[custom_data~{"game_total":1,total.sel:a}]
execute if data storage minecraft:temp total_game_wur.a{id:none} run return fail
execute in overworld run item replace block 0 2 0 container.1 with paper[custom_data={"game_total":1,total.sel:a},item_name='选择A',custom_name='']
data modify block 0 -2 0 front_text.messages[0] set value [{text:"按下",color:yellow,italic:false},{keybind:"key.swapOffhand",color:gold},{text:"来选择[",color:yellow},{"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"yellow","bold":true,interpret:true},{text:"]",color:yellow}]
data modify block 0 2 0 Items[{Slot:1b}].components."minecraft:custom_name" set from block 0 -2 0 front_text.messages[0]
item replace entity @s hotbar.3 from block 0 2 0 container.1
clear @s *[custom_data~{desk_default_tool:true}]
give @s carrot_on_a_stick[custom_name={text:"转盘 \u00a77- 右键选择",italic:false,color:green},custom_data={desk:"random",desk_item:1,desk_default_tool:true},item_model='compass']
give @s[tag=!desk.russia.lock] carrot_on_a_stick[custom_name={text:"枪 \u00a77- 右键选择",italic:false,color:red},custom_data={desk:"gun",desk_item:1,desk_default_tool:true},item_model='crossbow']
tellraw @s[tag=desk.russia.lock] ["\u00a7c你这一局枪被道具锁定，无法使用。"]
tag @s remove desk.russia.lock
##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 木剑
execute if score bw.sharpness.green board matches 0 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.green] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}]] 1
execute if score bw.sharpness.red board matches 0 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.red] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}]] 1
execute if score bw.sharpness.blue board matches 0 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.blue] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}]] 1
execute if score bw.sharpness.yellow board matches 0 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.yellow] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}]] 1

execute if score bw.sharpness.green board matches 1 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.green] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}],enchantments={sharpness:1}] 1
execute if score bw.sharpness.red board matches 1 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.red] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}],enchantments={sharpness:1}] 1
execute if score bw.sharpness.blue board matches 1 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.blue] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}],enchantments={sharpness:1}] 1
execute if score bw.sharpness.yellow board matches 1 run give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play,team=bw.yellow] minecraft:wooden_sword[custom_data={bw:1},tooltip_display={hidden_components:[unbreakable,can_break,can_place_on]},unbreakable={},can_break=[{blocks:"#minecraft:bedblocks"}],can_place_on=[{blocks:"#minecraft:bwplace"}],enchantments={sharpness:1}] 1
# give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play] minecraft:wooden_sword[custom_data={bw:1},unbreakable={show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false}] 1
tag @a remove bwneeds

# 剪刀
give @a[tag=bw.shears,gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:shears"}]}] shears[tooltip_display={hidden_components:[unbreakable,can_place_on,can_break]},unbreakable={},custom_data={bw:1},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}],enchantments={sharpness:1}]

# 镐子、斧子
give @a[scores={bw.pickaxe=1..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_pickaxe[enchantments={"minecraft:efficiency":1s},tooltip_display={hidden_components:[enchantments,unbreakable,can_place_on,can_break]},unbreakable={},custom_data={bw:1},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]]
give @a[scores={bw.axe=1..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_axe"}]}] wooden_axe[attribute_modifiers=[{type:"attack_damage",slot:"any",id:"uuid_7777842599633879",amount:1d,operation:"add_value"}],tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable,can_place_on,can_break]},enchantments={"minecraft:efficiency":1s},unbreakable={},custom_data={bw:1},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]]

give @a[scores={bw.pickaxe=2..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe[enchantments={"minecraft:efficiency":1s},tooltip_display={hidden_components:[enchantments,unbreakable,can_place_on,can_break]},unbreakable={},custom_data={bw:1},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]]
give @a[scores={bw.axe=2..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe[attribute_modifiers=[{type:"attack_damage",slot:"any",id:"uuid_7777842599633879",amount:2d,operation:"add_value"}],tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable,can_place_on,can_break]},enchantments={"minecraft:efficiency":1s},unbreakable={},custom_data={bw:1},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]]

give @a[scores={bw.pickaxe=3..3},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_pickaxe[enchantments={"minecraft:efficiency":1s},tooltip_display={hidden_components:[enchantments,unbreakable,can_place_on,can_break]},unbreakable={},custom_data={bw:1},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]]
give @a[scores={bw.axe=3..3},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_axe"}]}] diamond_axe[attribute_modifiers=[{type:"attack_damage",slot:"any",id:"uuid_7777842599633879",amount:3d,operation:"add_value"}],tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable,can_place_on,can_break]},enchantments={"minecraft:efficiency":1s},unbreakable={},custom_data={bw:1},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}]]

clear @a[scores={bw.pickaxe=..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_pickaxe
clear @a[scores={bw.axe=..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_axe

clear @a[scores={bw.pickaxe=..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe
clear @a[scores={bw.axe=..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_axe

clear @a[scores={bw.pickaxe=..0},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_pickaxe
clear @a[scores={bw.axe=..0},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_axe

clear @a[tag=!bw.shears,gamemode=!spectator,tag=bw.play,nbt={Inventory:[{id:"minecraft:shears"}]}] shears


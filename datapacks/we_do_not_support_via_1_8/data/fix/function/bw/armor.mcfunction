##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play] minecraft:wooden_sword[custom_data={bw:1},unbreakable={show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false}] 1
tag @a remove bwneeds
give @a[tag=bw.shears,gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:shears"}]}] shears[unbreakable={show_in_tooltip:false},custom_data={bw:1},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}]

give @a[scores={bw.pickaxe=1..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_pickaxe[enchantments={levels:{"minecraft:efficiency":1s},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_data={bw:1},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}]
give @a[scores={bw.axe=1..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_axe"}]}] wooden_axe[attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:"any",id:"uuid_7777842599633879",name:"noName",amount:1d,operation:"add_value"}],show_in_tooltip:false},enchantments={levels:{"minecraft:efficiency":1s},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_data={bw:1},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}]

give @a[scores={bw.pickaxe=2..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe[enchantments={levels:{"minecraft:efficiency":1s},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_data={bw:1},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}]
give @a[scores={bw.axe=2..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe[attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:"any",id:"uuid_7777842599633879",name:"noName",amount:2d,operation:"add_value"}],show_in_tooltip:false},enchantments={levels:{"minecraft:efficiency":1s},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_data={bw:1},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}]

give @a[scores={bw.pickaxe=3..3},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_pickaxe[enchantments={levels:{"minecraft:efficiency":1s},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_data={bw:1},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}]
give @a[scores={bw.axe=3..3},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_axe"}]}] diamond_axe[attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:"any",id:"uuid_7777842599633879",name:"noName",amount:3d,operation:"add_value"}],show_in_tooltip:false},enchantments={levels:{"minecraft:efficiency":1s},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_data={bw:1},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false},can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false}]

clear @a[scores={bw.pickaxe=..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_pickaxe
clear @a[scores={bw.axe=..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_axe

clear @a[scores={bw.pickaxe=..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe
clear @a[scores={bw.axe=..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_axe

clear @a[scores={bw.pickaxe=..0},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_pickaxe
clear @a[scores={bw.axe=..0},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_axe

clear @a[tag=!bw.shears,gamemode=!spectator,tag=bw.play,nbt={Inventory:[{id:"minecraft:shears"}]}] shears

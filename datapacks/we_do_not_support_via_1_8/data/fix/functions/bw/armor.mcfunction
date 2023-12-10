give @a[tag=bwneeds,gamemode=!spectator,tag=bw.play] minecraft:wooden_sword{bw:1,Unbreakable:1b,HideFlags:63,CanDestroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]} 1
tag @a remove bwneeds
give @a[tag=bw.shears,gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:shears"}]}] shears{Unbreakable:1b,bw:1,HideFlags:63,CanPlaceOn:["#minecraft:bwplace"],CanDestroy:["#minecraft:bedblocks"]}

give @a[scores={bw.pickaxe=1..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1s}],Unbreakable:1b,bw:1,HideFlags:63,CanPlaceOn:["#minecraft:bwplace"],CanDestroy:["#minecraft:bedblocks"]}
give @a[scores={bw.axe=1..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_axe"}]}] wooden_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:1d,Operation:0,UUID:[I;7777,8425,9963,3879]}],Enchantments:[{id:"minecraft:efficiency",lvl:1s}],Unbreakable:1b,bw:1,HideFlags:63,CanPlaceOn:["#minecraft:bwplace"],CanDestroy:["#minecraft:bedblocks"]}

give @a[scores={bw.pickaxe=2..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1s}],Unbreakable:1b,bw:1,HideFlags:63,CanPlaceOn:["#minecraft:bwplace"],CanDestroy:["#minecraft:bedblocks"]}
give @a[scores={bw.axe=2..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_axe"}]}] iron_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:2d,Operation:0,UUID:[I;7777,8425,9963,3879]}],Enchantments:[{id:"minecraft:efficiency",lvl:1s}],Unbreakable:1b,bw:1,HideFlags:63,CanPlaceOn:["#minecraft:bwplace"],CanDestroy:["#minecraft:bedblocks"]}

give @a[scores={bw.pickaxe=3..3},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1s}],Unbreakable:1b,bw:1,HideFlags:63,CanPlaceOn:["#minecraft:bwplace"],CanDestroy:["#minecraft:bedblocks"]}
give @a[scores={bw.axe=3..3},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_axe"}]}] diamond_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:3d,Operation:0,UUID:[I;7777,8425,9963,3879]}],Enchantments:[{id:"minecraft:efficiency",lvl:1s}],Unbreakable:1b,bw:1,HideFlags:63,CanPlaceOn:["#minecraft:bwplace"],CanDestroy:["#minecraft:bedblocks"]}

clear @a[scores={bw.pickaxe=..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_pickaxe
clear @a[scores={bw.axe=..2},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_axe

clear @a[scores={bw.pickaxe=..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe
clear @a[scores={bw.axe=..1},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_axe

clear @a[scores={bw.pickaxe=..0},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_pickaxe
clear @a[scores={bw.axe=..0},gamemode=!spectator,tag=bw.play,nbt=!{Inventory:[{id:"minecraft:wooden_pickaxe"}]}] wooden_axe

clear @a[tag=!bw.shears,gamemode=!spectator,tag=bw.play,nbt={Inventory:[{id:"minecraft:shears"}]}] shears
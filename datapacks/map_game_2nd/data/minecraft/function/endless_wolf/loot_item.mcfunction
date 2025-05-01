##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp board 0
execute store result score tmp board run random value 0..14
execute if score tmp board matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",count:1},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_sword",count:1},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_sword",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",count:1,components:{max_damage:1,enchantments:{sharpness:2},attribute_modifiers:[{id:attack_speed,type:attack_speed,amount:3,operation:"add_value",slot:"mainhand"},{id:attack,type:attack_damage,amount:18,operation:"add_value",slot:"mainhand"}],item_name:'充分吸收过阳光、浸泡过圣水、含有大蒜的银质十字架'}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 4 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 5 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 6 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 7 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 8 run summon item ~ ~ ~ {Item:{id:"minecraft:wind_charge",count:8,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 9 run summon item ~ ~ ~ {Item:{id:"minecraft:shield",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 10 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:3200767,potion:swiftness}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 11 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:12392957,potion:slowness}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 12 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:1572747,potion:"strong_leaping"}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 13 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16711680,potion:"strength"}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 14 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:12438026,potion:"invisibility"}}},Glowing:true,CustomNameVisible:true}

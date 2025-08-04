##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp board 0
execute store result score tmp board run random value 0..40
execute if score tmp board matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",count:1},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 1..2 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_sword",count:1},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",count:1,components:{max_damage:1,enchantments:{sharpness:2},attribute_modifiers:[{id:attack_speed,type:attack_speed,amount:3,operation:"add_value",slot:"mainhand"},{id:attack,type:attack_damage,amount:18,operation:"add_value",slot:"mainhand"}],item_name:'充分吸收过阳光、浸泡过圣水、含有大蒜的银质十字架'}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 4..10 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 11..15 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 16..20 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 21..25 run summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 26..30 run summon item ~ ~ ~ {Item:{id:"minecraft:wind_charge",count:8,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 31..32 run summon item ~ ~ ~ {Item:{id:"minecraft:shield",count:1,components:{}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 33 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:3200767,potion:swiftness}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 34 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:12392957,potion:slowness}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 35 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:1572747,potion:"strong_leaping"}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 36 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16711680,potion:"strength"}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 37..39 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:12438026,potion:"invisibility"}}},Glowing:true,CustomNameVisible:true}
execute if score tmp board matches 40 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:6316859,custom_effects:[{id:"resistance",amplifier:5,duration:100}]}}},Glowing:true,CustomNameVisible:true}

execute store result score random temp run random value 1..15
execute if score random temp matches 1 run summon item ~ ~ ~ {Item:{id:"ender_pearl",count:1,components:{"minecraft:custom_data":{one_arrow:tool}}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 2 run summon item ~ ~ ~ {Item:{id:"spectral_arrow",count:1,components:{"minecraft:custom_data":{one_arrow:tool}}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 3 run summon item ~ ~ ~ {Item:{id:"crossbow",count:1,components:{"minecraft:max_damage":1,"minecraft:enchantments":{"quick_charge":5},"minecraft:custom_data":{one_arrow:tool}}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 4 run summon item ~ ~ ~ {Item:{id:"golden_apple",count:1,components:{"minecraft:custom_data":{one_arrow:tool}}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 5 run summon item ~ ~ ~ {Item:{id:"potion",count:1,components:{custom_name:{text:"神龟药水(缩减版)",italic:false},"minecraft:potion_contents":{custom_color:7237230,custom_effects:[{id:"slowness",duration:100,amplifier:0},{id:"resistance",duration:100,amplifier:5}]},"minecraft:custom_data":{one_arrow:tool}}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 6 run summon item ~ ~ ~ {Item:{id:"potion",count:1,components:{custom_name:{text:"强制隐身药水(潜行取消)",italic:false},"minecraft:potion_contents":{custom_color:13172480,custom_effects:[{id:"invisibility",duration:100,amplifier:0}]},"minecraft:custom_data":{one_arrow:tool}}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 7 run summon item ~ ~ ~ {Item:{id:"glow_ink_sac",count:1,components:{item_name:"让其他玩家发光3s\u00a77 - 右键使用","consumable":{consume_seconds:0.1,animation:bow},"minecraft:custom_data":{one_arrow:tool,type:"glow"}}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 8 run summon item ~ ~ ~ {Item:{id:"iron_sword",count:1,components:{item_name:"一剑毙命","minecraft:custom_data":{one_arrow:tool},max_damage:1,attribute_modifiers:[{id:"a",type:"attack_damage",amount:20,operation:"add_value"}]}},Tags:["one_arrow.item.new"]}
execute if score random temp matches 9 run summon item ~ ~ ~ {Item:{id:"shield",count:1,components:{"minecraft:custom_data":{one_arrow:tool},max_damage:1}},Tags:["one_arrow.item.new"]}

execute as @e[tag=one_arrow.item.new] run data merge entity @s {Glowing:true}
execute as @e[tag=one_arrow.item.new] in overworld run spreadplayers -79 200 0 20 under 7 false @s
tag @e[tag=one_arrow.item.new] remove one_arrow.item.new
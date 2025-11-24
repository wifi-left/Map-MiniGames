execute if block ~ ~-1 ~ water_cauldron run return run tellraw @s ["\u00a7c炼药锅冷却中..."]
execute store result score killer.itemcount temp run clear @s gold_ingot 0
execute unless score killer.itemcount temp matches 2.. run return run tellraw @s ["\u00a7c金锭不够"]
setblock ~ ~-1 ~ minecraft:water_cauldron[level=1]
clear @s gold_ingot 2
execute store result score killer.random temp run random value 1..14
execute if score killer.random temp matches 1 run give @s potion[custom_data={killer:1},potion_contents={custom_color:0,custom_effects:[{id:"speed",amplifier:1,duration:600}]},custom_name="神秘药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 2 run give @s potion[custom_data={killer:1},potion_contents={custom_effects:[{id:"speed",amplifier:1,duration:600}]},custom_name="速度药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 3 run give @s potion[custom_data={killer:1},potion_contents={custom_effects:[{id:"mining_fatigue",amplifier:1,duration:600}]},custom_name="挖掘疲劳药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 4 run give @s potion[custom_data={killer:1},potion_contents={custom_color:0,custom_effects:[{id:"mining_fatigue",amplifier:1,duration:600}]},custom_name="神秘药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 5 run give @s potion[custom_data={killer:1},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:night_vision",amplifier:1,duration:600}]},custom_name="神秘药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 6 run give @s potion[custom_data={killer:1},potion_contents={custom_effects:[{id:"minecraft:night_vision",amplifier:1,duration:600}]},custom_name="夜视药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 7 run give @s potion[custom_data={killer:1},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:haste",amplifier:1,duration:600}]},custom_name="神秘药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 8 run give @s potion[custom_data={killer:1},potion_contents={custom_effects:[{id:"minecraft:haste",amplifier:1,duration:600}]},custom_name="急迫药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 9 run give @s potion[custom_data={killer:1},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:invisibility",amplifier:1,duration:600}]},custom_name="神秘药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 10 run give @s potion[custom_data={killer:1},potion_contents={custom_effects:[{id:"minecraft:invisibility",amplifier:1,duration:600}]},custom_name="隐身药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 11 run give @s potion[custom_data={killer:1},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:resistance",amplifier:25,duration:400}]},custom_name="神秘药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 12 run give @s potion[custom_data={killer:1},potion_contents={custom_effects:[{id:"minecraft:resistance",amplifier:25,duration:400}]},custom_name="无敌药水",tooltip_display={hidden_components:["potion_contents"]}]

execute if score killer.random temp matches 13 run give @s potion[custom_data={killer:1},potion_contents={custom_color:0,custom_effects:[{id:"jump_boost",amplifier:2,duration:600}]},custom_name="神秘药水",tooltip_display={hidden_components:["potion_contents"]}]
execute if score killer.random temp matches 14 run give @s potion[custom_data={killer:1},potion_contents={custom_effects:[{id:"jump_boost",amplifier:2,duration:600}]},custom_name="跳跃药水",tooltip_display={hidden_components:["potion_contents"]}]
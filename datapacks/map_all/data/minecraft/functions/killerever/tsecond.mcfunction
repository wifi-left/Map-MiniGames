##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
summon item 142 55 -21 {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_data":{ms:1},"minecraft:custom_name":'"\\u00a7e冻冻球 \\u00a77- 放在副手(F键)使用"'}},Tags:["newitem"]}
summon item 142 55 -21 {Item:{id:"minecraft:rabbit_stew",count:1,components:{"minecraft:custom_data":{ms:1},"minecraft:custom_name":'"\\u00a7e海王之卵 \\u00a77- 放在副手(F键)使用"'}},Tags:["newitem"]}
summon item 142 55 -21 {Item:{id:"minecraft:mushroom_stew",count:1,components:{"minecraft:custom_data":{ms:1},"minecraft:custom_name":'"\\u00a7e原地升天 \\u00a77- 放在副手(F键)使用"'}},Tags:["newitem"]}
summon item 142 55 -21 {Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_data":{ms:1},"minecraft:custom_name":'"\\u00a7e金锭"'}},Tags:["newitem"]}

summon item 142 55 -21 {Item:{id:"minecraft:enchanted_golden_apple",count:1,components:{"minecraft:custom_data":{ms:1},"minecraft:custom_name":'"\\u00a7e无敌球(10s 免疫伤害) \\u00a77- 食用即可"'}},Tags:["newitem"]}
summon item 142 55 -21 {Item:{id:"minecraft:golden_apple",count:1,components:{"minecraft:custom_data":{ms:1},"minecraft:custom_name":'"\\u00a7e神之果(10s 速度 + 跳跃效果) \\u00a77- 食用即可"'}},Tags:["newitem"]}

execute as @e[type=item,tag=newitem] at @s run function killerever/ranitem

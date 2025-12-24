setblock ~ ~ ~ pink_wool
summon text_display ~ ~2 ~ {text:[{text:"-> ",color:gray},{bold:true,text:"终点",color:"light_purple"},{text:" <-",color:gray}],Tags:["build_parkour.display"],billboard:"vertical"}
summon item_display ~ ~1 ~ {item_display:"ground",item:{id:"carrot_on_a_stick",components:{"minecraft:custom_model_data":{floats:[5]}}},Tags:["build_parkour.display"]}
kill @s[type=marker]
function minecraft:build_parkour/during/timeforbuildertorun
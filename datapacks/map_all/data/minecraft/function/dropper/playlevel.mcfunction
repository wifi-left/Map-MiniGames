##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function dropper/tptolevel
attribute @s max_health base set 2
title @s actionbar ["\u00a7d第 ",{"score":{"name": "@s","objective": "dropper.level"},"color": "aqua"},"\u00a7d 关"]
# item replace entity @s armor.feet with diamond_boots{AttributeModifiers:[{AttributeName:"max_health",Amount:-14d,Operation:0,UUID:[I;1041,1467,7334,9500]}],Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:63}




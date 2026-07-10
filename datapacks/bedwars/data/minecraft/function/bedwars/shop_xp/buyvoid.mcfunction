##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
#-34
execute if score @s xp matches 640.. run xp add @s -640 levels
execute unless score @s xp matches 640.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s xp matches 640.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 640.. run tellraw @s ["§a你购买了§6虚空回城卷轴(一次性) * 1"]
execute if score @s xp matches 640.. run give @s paper[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:[can_place_on,can_break]},can_break=[{blocks:"#minecraft:bedblocks"}],item_name='卷轴',custom_name={text:"虚空回城卷轴(一次性)",color:green,italic:false},lore=[{text:"放入背包即可在落入虚空时返回出生点",color:aqua,italic:true}],custom_data={type:"bw:void"}]


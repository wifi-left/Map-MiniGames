##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# REPLACED

execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0

execute if score @s xp matches 600.. run xp add @s -600 levels
execute unless score @s xp matches 600.. run tellraw @s ["§c你的资源不够买这个东西!"]
execute unless score @s xp matches 600.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 600.. run tellraw @s ["§a你购买了§6Speed Jump Potion * 1"]
execute if score @s xp matches 600.. run give @s minecraft:potion[potion_contents={custom_effects:[{id:"speed",amplifier:1,duration:1200},{id:"jump_boost",amplifier:3,duration:1200}],custom_color:63205},custom_name="雷碧"]



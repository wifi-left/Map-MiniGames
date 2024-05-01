##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if entity @e[tag=battle.potion.sel,tag=potion.speed,type=armor_stand] run effect give @s speed 15 0 true
execute if entity @e[tag=battle.potion.sel,tag=potion.jump,type=armor_stand] run effect give @s jump_boost 15 1 true
execute if entity @e[tag=battle.potion.sel,tag=potion.strength,type=armor_stand] run effect give @s strength 15 0 true
execute if entity @e[tag=battle.potion.sel,tag=potion.slowfall,type=armor_stand] run effect give @s slow_falling 15 0 true
execute if entity @e[tag=battle.potion.sel,tag=potion.resistance,type=armor_stand] run effect give @s resistance 15 0 true
tellraw @s ["\u00a76你获得了",{"selector":"@e[tag=battle.potion.sel,limit=1]"},"\u00a76的增益。"]
playsound entity.generic.drink player @s ~ ~ ~ 1 1 1

kill @e[tag=battle.potion.sel,type=armor_stand]

##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s @e[limit=1,sort=random,tag=sur.tp,type=marker]
tellraw @s ["\n\u00a7e你获得了更多物资。\n"]
gamemode survival @s
give @s stone_sword
give @s stone_pickaxe
give @s stone_axe
give @s stone_shovel
give @s zombie_spawn_egg
give @s skeleton_spawn_egg
execute unless score sur.state state matches 1.. run scoreboard players set @s hub 1
execute unless score sur.state state matches 1.. run tellraw @s ["\n\u00a7c游戏出错。你已返回大厅。\n"]
item replace entity @s armor.head with minecraft:zombie_head[enchantments={levels:{"minecraft:binding_curse":1}},attribute_modifiers={modifiers:[{type:"generic.armor",slot:head,uuid:[1041,1467,7334,9500],name:"noName",amount:20d,operation:"add_value"},{type:"generic.armor_toughness",slot:head,uuid:[2169,7724,3478,3358],name:"noName",amount:4d,operation:"add_value"}]}]

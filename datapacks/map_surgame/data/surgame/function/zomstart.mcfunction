tp @s @e[limit=1,sort=random,tag=sur.tp,type=marker]
tellraw @s ["\n\u00a7e你获得了更多物资。\n"]
gamemode survival @s
give @s stone_sword 1
give @s stone_pickaxe 1
give @s stone_axe 1
give @s stone_shovel 1
give @s zombie_spawn_egg 2
give @s skeleton_spawn_egg 2
execute unless score sur.state state matches 1.. run scoreboard players set @s hub 1
execute unless score sur.state state matches 1.. run tellraw @s ["\n\u00a7c游戏出错。你已返回大厅。\n"]
item replace entity @s armor.head with minecraft:zombie_head[enchantments={levels:{"minecraft:binding_curse":1}},attribute_modifiers={modifiers:[{type:"armor",slot:head,id:"uuid_1041146773349500",amount:20d,operation:"add_value"},{type:"armor_toughness",slot:head,id:"uuid_2169772434783358",amount:4d,operation:"add_value"}]}]

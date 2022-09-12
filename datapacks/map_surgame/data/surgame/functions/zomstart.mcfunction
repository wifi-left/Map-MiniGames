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
item replace entity @s armor.head with minecraft:zombie_head{Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"noName",Amount:20d,Operation:0,UUID:[I;1041,1467,7334,9500],Slot:head},{AttributeName:"generic.armor_toughness",Name:"noName",Amount:4d,Operation:0,UUID:[I;2169,7724,3478,3358],Slot:head}]}
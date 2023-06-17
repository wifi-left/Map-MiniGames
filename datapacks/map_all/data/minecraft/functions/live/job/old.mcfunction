#/summon minecraft:creeper ~ ~1 ~ {CustomName:"[\"CREEPER\"]",CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Glowing:1b,powered:true,ignited:true,ExplosionRadius:2b,Fuse:20s}
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:16039255},Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.head with minecraft:player_head{Unbreakable:1b,SkullOwner:"MHF_ArrowUp",Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @s armor.feet with minecraft:leather_boots{display:{color:16039255},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:0}]}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:16039255},Unbreakable:1b,Enchantments:[{id:"fire_protection",lvl:0}]}
item replace entity @s container.0 with minecraft:carrot_on_a_stick{job:1,display:{Name:'"\\u00a72\\u00a7l古老的剑"',Lore:['"\\u00a7b右键释放剑气"']},Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:2d,Operation:0,UUID:[I;4894,7942,7863,6495],Slot:mainhand}],CustomModelData:3} 1

effect give @s slowness 99999 0 true
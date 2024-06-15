##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#/summon minecraft:creeper ~ ~1 ~ {CustomName:"[\"CREEPER\"]",CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Glowing:1b,powered:true,ignited:true,ExplosionRadius:2b,fuse:20s}
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color={rgb:16039255},unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:protection":1s},show_in_tooltip:false}]
item replace entity @s armor.head with minecraft:player_head[unbreakable={},profile="MHF_ArrowUp",enchantments={levels:{"minecraft:binding_curse":1}}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color={rgb:16039255},unbreakable={},enchantments={levels:{"minecraft:blast_protection":0}}]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color={rgb:16039255},unbreakable={},enchantments={levels:{"minecraft:fire_protection":0}}]
item replace entity @s container.0 with minecraft:carrot_on_a_stick[custom_data={job:1},custom_name='"\\u00a72\\u00a7l古老的剑"',lore=['"\\u00a7b右键释放剑气"'],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:mainhand,id:"uuid_4894794278636495",name:"noName",amount:2d,operation:"add_value"},{type:"generic.attack_speed",slot:"mainhand",id:"uuid_1145514511455145",name:"noName",amount:-2.4,operation:"add_value"}],show_in_tooltip:false},custom_model_data=3] 1

effect give @s slowness 99999 0 true

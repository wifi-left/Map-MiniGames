##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#/summon minecraft:creeper ~ ~1 ~ {CustomName:"[\"CREEPER\"]",CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Glowing:1b,powered:true,ignited:true,ExplosionRadius:2b,fuse:20s}
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=13825332,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:protection":1s}]
item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=13825332,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:protection":1s}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=13825332,unbreakable={},enchantment_glint_override=true]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color=13825332,unbreakable={},enchantment_glint_override=true]
item replace entity @s container.1 with minecraft:carrot_on_a_stick[custom_data={job:7},custom_name="\u00a72\u00a7l古老的钟",lore=["\u00a7b右键使用"],tooltip_display={hidden_components:[unbreakable,enchantments,attribute_modifiers]},unbreakable={},enchantments={"minecraft:unbreaking":1},attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:0d,operation:"add_value"}],custom_model_data={floats:[1f]}] 1
item replace entity @s container.0 with minecraft:iron_sword[tooltip_display={hidden_components:[unbreakable,attribute_modifiers]},unbreakable={},custom_name=["§6Golden §rIron §bSword"],lore=[["§f5§c♥"]],attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:5d,operation:"add_value"},{type:"attack_speed",slot:"mainhand",id:"uuid_1145514511455145",amount:-2.4,operation:"add_value"}]] 1



##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#/summon minecraft:creeper ~ ~1 ~ {CustomName:"[\"CREEPER\"]",CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Glowing:1b,powered:true,ignited:true,ExplosionRadius:2b,fuse:20s}
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=15158200,unbreakable={},enchantments={binding_curse:1},attribute_modifiers=[{id:"a",type:"attack_damage",amount:0.5,slot:"any",operation:"add_value"},{id:"b",type:"safe_fall_distance",amount:2,slot:"any",operation:"add_value"},{id:"d",type:"attack_knockback",amount:-0.8,slot:"any",operation:"add_value"},{id:"e",type:"scale",amount:-0.5,slot:"any",operation:"add_value"},{id:"f",type:"block_interaction_range",amount:0,slot:"any",operation:"add_value"},{id:"h",type:"entity_interaction_range",amount:-2,slot:"any",operation:"add_value"},{id:"h",type:"movement_speed",amount:0,slot:"any",operation:"add_value"}],tooltip_display={hide_tooltip:true}]
item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=10554854,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16711786,unbreakable={},enchantment_glint_override=true]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color=8852467,unbreakable={},enchantment_glint_override=true]
item replace entity @s container.0 with minecraft:stick[unbreakable={},item_name={text:"小人棍",color:aqua,shadow_color:[255,25,255,0.7]}]

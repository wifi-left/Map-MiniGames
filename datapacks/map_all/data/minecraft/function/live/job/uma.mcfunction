##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#/summon minecraft:creeper ~ ~1 ~ {CustomName:"[\"CREEPER\"]",CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Glowing:1b,powered:true,ignited:true,ExplosionRadius:2b,fuse:20s}
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=851764,unbreakable={},enchantments={binding_curse:1},attribute_modifiers=[{id:"a",type:"gravity",amount:-0.08,slot:"any",operation:"add_value"},{id:"b",type:"safe_fall_distance",amount:200000000,slot:"any",operation:"add_value"},{id:"b",type:"max_health",amount:-12,slot:"any",operation:"add_value"}],tooltip_display={hide_tooltip:true},custom_data={job:uma}]
effect give @s slow_falling infinite 0 true
effect give @s jump_boost infinite 1 true
item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=851764,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16775936,unbreakable={},enchantment_glint_override=true]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color=16775936,unbreakable={},enchantment_glint_override=true]
item replace entity @s container.0 with minecraft:stick[unbreakable={},item_name={text:"外星武器",color:aqua,shadow_color:[255,25,255,0.7]},attribute_modifiers=[{id:"s",type:attack_damage,slot:mainhand,amount:3,operation:"add_value"}]]
item replace entity @s container.1 with minecraft:paper[unbreakable={},item_name={text:"提示：使用跳跃键和潜行键控制升降；将此物品放在副手停止飞行模式",color:green},custom_data={job:uma_stop}]

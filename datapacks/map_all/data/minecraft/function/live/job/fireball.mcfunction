##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#/summon minecraft:creeper ~ ~1 ~ {CustomName:"[\"CREEPER\"]",CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Glowing:1b,powered:true,ignited:true,ExplosionRadius:2b,fuse:20s}
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=15488341,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:protection":1s,"minecraft:fire_protection":1}]
item replace entity @s armor.head with minecraft:note_block[unbreakable={},enchantments={"minecraft:binding_curse":1}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15488341,unbreakable={},enchantments={"minecraft:blast_protection":1}]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color=15488341,unbreakable={},enchantments={"minecraft:fire_protection":1}]
item replace entity @s container.0 with minecraft:red_dye[tooltip_display={hidden_components:[unbreakable,enchantments,attribute_modifiers]},unbreakable={},custom_name=["§4Red §bSword"],lore=[["§c4 HP"]],enchantments={"minecraft:unbreaking":1},attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:4d,operation:"add_value"},{type:"attack_speed",slot:"mainhand",id:"uuid_1145514511455145",amount:-2.2,operation:"add_value"}]] 1
give @s minecraft:carrot_on_a_stick[enchantments={"minecraft:unbreaking":1},tooltip_display={hidden_components:[enchantments]},custom_name="\u00a74\u00a7lFIREBALL \u00a77- 右键发射",lore=["\u00a7b小心！火球可能会误伤你"],custom_data={job:"fireball"},item_model="fire_charge"]

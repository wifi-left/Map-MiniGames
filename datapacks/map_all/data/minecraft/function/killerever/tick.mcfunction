##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute positioned -232 -60 -308 as @a[team=play.killer,distance=0..2,gamemode=adventure] at @s run function killerever/died
execute as @a[team=play.killer,gamemode=adventure] at @s run function minecraft:killerever/action/check_if_get_bow

execute as @e[type=armor_stand,tag=killer.bow] at @s run rotate @s ~5 ~
execute as @a[team=play.killer] at @s unless items entity @s armor.feet leather_boots run item replace entity @s armor.feet with leather_boots[custom_data={killer:1},enchantments={binding_curse:1},unbreakable={},attribute_modifiers=[{id:"fall",type:safe_fall_distance,amount:100,operation:"add_value"}],item_model="air",tooltip_display={hide_tooltip:true}]

execute if score killer.state state matches 2..4 as @a[team=play.killer,gamemode=adventure] run function minecraft:killerever/test_item

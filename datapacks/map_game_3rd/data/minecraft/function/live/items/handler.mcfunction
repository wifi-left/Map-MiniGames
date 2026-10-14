execute if score live.map board matches 0 as @s[team=live] run function minecraft:live/items/runner_flyable
execute if score live.map board matches 1 as @s[team=live] run function minecraft:live/items/runner_nofly

execute if score live.map board matches 0 as @s[team=live.killer] run function minecraft:live/items/killer_flyable
execute if score live.map board matches 1 as @s[team=live.killer] run function minecraft:live/items/killer_nofly

execute unless items entity @s armor.feet leather_boots run clear @s leather_boots
execute unless items entity @s armor.feet leather_boots run item replace entity @s armor.feet with leather_boots[custom_data={live.equipment:1},tooltip_display={hide_tooltip:true},attribute_modifiers=[{id:"no_fire_resi",amount:-1d,operation:"add_multiplied_base",type:"minecraft:burning_time",slot:"armor"}],unbreakable={},enchantments={binding_curse:1}]
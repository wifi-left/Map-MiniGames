##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{desk:1}}}}] run 
execute unless entity @s[tag=desk.russia.nowround] run tellraw @s ["\u00a7c现在不是你的回合。你无法操作。"]
execute unless entity @s[tag=desk.russia.nowround] run clear @s *[custom_data~{desk_default_tool:true}]
execute unless entity @s[tag=desk.russia.nowround] run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
execute unless entity @s[tag=desk.russia.nowround] run return 0

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{desk:"random",desk_item:1}}}}] run function desk/russia/item_effect/random
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{desk:"gun",desk_item:1}}}}] run function desk/russia/item_effect/gun
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{desk:"freeze"}}}}] run function desk/russia/item_effect/freeze
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{desk:"weapon_lock"}}}}] run function desk/russia/item_effect/weapon_lock
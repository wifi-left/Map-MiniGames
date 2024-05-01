##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{desk:1}}}}] run function desk/touzi/control/refrush
# execute if entity @s[nbt={SelectedItem:{tag:{desk:2}}}] run tag @s add skill.old

